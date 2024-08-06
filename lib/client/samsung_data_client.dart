import 'dart:io';

import 'package:dio/dio.dart';
import 'package:samsung_downloader/models/stress/stress.dart';

class PaginatedResponse<T> {
  PaginatedResponse({
    required this.data,
    required this.hasNext,
    required this.pagingStartedAt,
    this.nextPageToken,
  });

  final List<T> data;
  final bool hasNext;
  final String? nextPageToken;
  final DateTime pagingStartedAt;
}

class PaginatedDiffResponse<T> {
  PaginatedDiffResponse({
    required this.data,
    required this.hasNext,
    required this.checkPoint,
    this.nextPageToken,
  });

  final List<T> data;
  final bool hasNext;
  final String? nextPageToken;
  final DateTime checkPoint;
}

class SamsungDataClient {
  SamsungDataClient({
    required final String bearerToken,
    final String baseUrl = 'https://api.samsungcloud.com/data/v3',
    final String userAgentHeader =
        'sdk_gphone64_x86_64;SE1B.240122.005.11418786;healthsdk=6.27.0.161',
  }) : _dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            headers: {
              HttpHeaders.authorizationHeader: 'Bearer $bearerToken',
              HttpHeaders.userAgentHeader: userAgentHeader,
            },
          ),
        );

  factory SamsungDataClient.fromEnv() {
    final bearerToken = Platform.environment['SAMSUNG_TOKEN'];
    if (bearerToken == null) {
      throw Exception('Please set the SAMSUNG_TOKEN environment variable');
    }
    return SamsungDataClient(bearerToken: bearerToken);
  }
  final Dio _dio;

  Future<Response> _get(
    final String path, {
    required final int limit,
    final int? schemaRevision,
    final String? pageToken,
    final int? lastCheckPoint,
  }) async {
    final queryParameters = {
      'limit': limit,
      if (schemaRevision != null) 'schemaRevision': schemaRevision,
      if (pageToken != null) 'pageToken': pageToken,
      if (lastCheckPoint != null) 'lastCheckPoint': lastCheckPoint,
    };
    return _dio.get(path, queryParameters: queryParameters);
  }

  Future<PaginatedResponse<Stress>> getStressData({
    final String? pageToken,
  }) async {
    final List<Stress> stressData = [];

    final response = await _get(
      '/com.samsung.shealth.stress/documents',
      schemaRevision: 7,
      limit: 500,
      pageToken: pageToken,
    );

    print('Got response');
    print(response.statusCode);
    if (response.statusCode == 200) {
      final documents = response.data['documents'] as List;
      stressData.addAll(
        documents
            .map((final document) => Stress.fromEncodedJson(document['data']))
            .toList(),
      );
      print('hasNext: ${response.data['hasNext']}');
      final bool hasNext = response.data['hasNext'];
      final int pagingStartedAt = response.data['pagingStartedAt'];
      final String? nextPageToken =
          hasNext ? response.data['nextPageToken'] : null;
      print(
        'The latest stress value is from ${stressData.last.createTime.toIso8601String()}',
      );
      print('The latest stress value has uid ${stressData.last.datauuid}');
      return PaginatedResponse(
        data: stressData,
        hasNext: hasNext,
        nextPageToken: nextPageToken,
        pagingStartedAt: DateTime.fromMillisecondsSinceEpoch(pagingStartedAt),
      );
    } else {
      throw Exception('Failed to get stress data');
    }
  }

  Future<PaginatedDiffResponse<Stress>> getStressDataDiff({
    required final DateTime lastCheckPoint,
    final String? pageToken,
  }) async {
    final List<Stress> stressData = [];

    final response = await _get(
      '/com.samsung.shealth.stress/events',
      limit: 500,
      lastCheckPoint: lastCheckPoint.millisecondsSinceEpoch,
      pageToken: pageToken,
    );

    print('Got response');
    print(response.statusCode);
    if (response.statusCode == 200) {
      final documents = response.data['updated'] as List;
      stressData.addAll(
        documents
            .map(
              (final document) =>
                  Stress.fromEncodedJson(document['document']['data']),
            )
            .toList(),
      );
      print('hasNext: ${response.data['hasNext']}');
      final bool hasNext = response.data['hasNext'];
      final int checkPoint = response.data['checkPoint'];
      final String? nextPageToken =
          hasNext ? response.data['nextPageToken'] : null;
      return PaginatedDiffResponse(
        data: stressData,
        hasNext: hasNext,
        nextPageToken: nextPageToken,
        checkPoint: DateTime.fromMillisecondsSinceEpoch(checkPoint),
      );
    } else {
      throw Exception('Failed to get stress data');
    }
  }
}
