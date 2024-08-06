import 'dart:io';
import 'package:mongo_dart/mongo_dart.dart';

class MongoClient {
  static Db getDatabase() {
    final env = Platform.environment;
    final dbUrl = env['MONGODB_URL'] ?? 'mongodb://localhost:27017/samsung';
    final db = Db(dbUrl);
    return db;
  }
}
