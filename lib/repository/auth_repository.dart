import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:shealth_downloader/client/mongo_client.dart';

class OAuthData {
  OAuthData({
    required this.accessToken,
    required this.refreshToken,
    required this.accessTokenExpiration,
    required this.refreshTokenExpiration,
  });

  final String accessToken;
  final String refreshToken;
  final DateTime accessTokenExpiration;
  final DateTime refreshTokenExpiration;
}

class BearerToken {
  BearerToken({
    required this.token,
    required this.expiration,
  });

  final String token;
  final DateTime expiration;
}

class AuthRepository {
  AuthRepository() {
    _db = MongoClient.getDatabase();
    _collectionName = 'OAuth';
    _bearerCollectionName = 'Bearer';
  }

  late Db _db;
  late String _collectionName;
  late String _bearerCollectionName;

  Future<void> saveTokens({
    required final OAuthData data,
  }) async {
    final collection = _db.collection(_collectionName);
    await _db.open();
    await collection.update(
      {},
      {
        '\$set': {
          'accessToken': data.accessToken,
          'refreshToken': data.refreshToken,
          'accessTokenExpiration': data.accessTokenExpiration,
          'refreshTokenExpiration': data.refreshTokenExpiration,
        },
      },
      upsert: true,
    );
    await _db.close();
  }

  Future<OAuthData?> getTokens() async {
    final collection = _db.collection(_collectionName);
    await _db.open();
    final result = await collection.findOne();
    await _db.close();
    if (result != null) {
      final accessToken = result['accessToken'] as String;
      final refreshToken = result['refreshToken'] as String;
      final accessTokenExpiration = result['accessTokenExpiration'] as DateTime;
      final refreshTokenExpiration =
          result['refreshTokenExpiration'] as DateTime;
      if (accessTokenExpiration
          .isAfter(DateTime.now().add(Duration(minutes: 10)))) {
        return OAuthData(
          accessToken: accessToken,
          refreshToken: refreshToken,
          accessTokenExpiration: accessTokenExpiration,
          refreshTokenExpiration: refreshTokenExpiration,
        );
      }
      return refreshTokens();
    } else {
      final env = Platform.environment;
      final accessToken = env['SAMSUNG_ACCESS_TOKEN'];
      final refreshToken = env['SAMSUNG_REFRESH_TOKEN'];
      final accessTokenExpiration = DateTime.now().add(Duration(days: 8));
      final refreshTokenExpiration = DateTime.now().add(Duration(days: 80));
      if (accessToken != null && refreshToken != null) {
        final data = OAuthData(
          accessToken: accessToken,
          refreshToken: refreshToken,
          accessTokenExpiration: accessTokenExpiration,
          refreshTokenExpiration: refreshTokenExpiration,
        );
        await saveTokens(data: data);
        return data;
      }
    }
    return null;
  }

  Future<OAuthData?> refreshTokens() async {
    final collection = _db.collection(_collectionName);
    await _db.open();
    final result = await collection.findOne();
    await _db.close();
    final env = Platform.environment;
    final clientId = env['SAMSUNG_APP_ID'];
    if (result != null) {
      final refreshToken = result['refreshToken'] as String;
      final dio = Dio();
      final response = await dio.post(
        'https://eu-auth2.samsungosp.com/auth/oauth2/token',
        data: {
          'client_id': clientId,
          'refresh_token': refreshToken,
          'grant_type': 'refresh_token',
        },
        options: Options(
          headers: {
            HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
          },
        ),
      );
      final data = response.data;
      final newAccessToken = data['access_token'] as String;
      final newRefreshToken = data['refresh_token'] as String;
      final accessTokenExpiration = DateTime.now().add(
        Duration(seconds: data['expires_in'] as int),
      );
      final refreshTokenExpiration = DateTime.now().add(
        Duration(seconds: data['refresh_token_expires_in'] as int),
      );
      final newData = OAuthData(
        accessToken: newAccessToken,
        refreshToken: newRefreshToken,
        accessTokenExpiration: accessTokenExpiration,
        refreshTokenExpiration: refreshTokenExpiration,
      );
      await saveTokens(data: newData);
      return newData;
    }
    return null;
  }

  Future<BearerToken?> getBearerToken() async {
    final collection = _db.collection(_bearerCollectionName);
    await _db.open();
    final result = await collection.findOne();
    await _db.close();
    if (result != null) {
      final token = result['token'] as String;
      final expiration = result['expiration'] as DateTime;
      if (expiration.isAfter(DateTime.now().add(Duration(minutes: 10)))) {
        return BearerToken(
          token: token,
          expiration: expiration,
        );
      }
    }
    return fetchJwtToken();
  }

  Future<BearerToken?> fetchJwtToken() async {
    final bearerCollection = _db.collection(_bearerCollectionName);
    final env = Platform.environment;
    final OAuthData? tokens = await getTokens();
    if (tokens != null) {
      final accessToken = tokens.accessToken;
      // Generate and return JWT token from the access token
      final dio = Dio();
      final response = await dio.post(
        'https://play.samsungcloud.com/identity/v1/tokens',
        options: Options(
          headers: {
            HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
            'x-sc-app-id': env['SAMSUNG_APP_ID'],
            'x-sc-access-token': accessToken,
            'x-sc-app-version': env['SAMSUNG_APP_VERSION'],
            'x-sc-cdid': env['SAMSUNG_CDID'],
            'x-sc-uid': env['SAMSUNG_USER_ID'],
          },
        ),
      );
      final data = response.data;
      final token = data['accessToken'] as String;
      final expiration = DateTime.fromMillisecondsSinceEpoch(
        (data['expiresAt'] as int) * 1000,
      );
      await _db.open();
      await bearerCollection.update(
        {},
        {
          '\$set': {
            'token': token,
            'expiration': expiration,
          },
        },
        upsert: true,
      );
      await _db.close();
      return BearerToken(
        token: token,
        expiration: expiration,
      );
    }
    return null;
  }
}
