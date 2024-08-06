import 'package:mongo_dart/mongo_dart.dart';
import 'package:shealth_downloader/client/mongo_client.dart';
import 'package:shealth_downloader/client/samsung_data_client.dart';
import 'package:shealth_downloader/models/stress/stress.dart';
import 'package:shealth_downloader/repository/samsung_repository.dart';

class StressRepository implements SamsungItemRepository {
  StressRepository() {
    _db = MongoClient.getDatabase();
    _lastCheckPointCollection = _db.collection('LastCheckPoint');
    _stressCollection = _db.collection('Stress');
    _client = SamsungDataClient.fromEnv();
  }

  late Db _db;
  late DbCollection _lastCheckPointCollection;
  late DbCollection _stressCollection;
  late SamsungDataClient _client;

  @override
  Future<void> load() async {
    await _db.open();
    final lastCheckPoint = await _getLastCheckpoint();
    if (lastCheckPoint == null) {
      await _downloadHistoricalData();
    } else {
      await _loadChangesetAndPerformUpdates(lastCheckPoint);
    }
    await _db.close();
  }

  Future<DateTime?> _getLastCheckpoint() async {
    final result = await _lastCheckPointCollection.findOne({
      'name': 'Stress',
    });
    return result?['timestamp'];
  }

  Future<void> _downloadHistoricalData() async {
    print('Downloading historical data for Stress');
    final List<Stress> stressData = [];
    bool hasNext = true;
    String? nextPageToken;
    DateTime pagingStartedAt = DateTime.now();
    while (hasNext) {
      final response = await _client.getStressData(pageToken: nextPageToken);
      stressData.addAll(response.data);
      hasNext = response.hasNext;
      nextPageToken = response.nextPageToken;
      pagingStartedAt = response.pagingStartedAt;
    }
    await _stressCollection
        .insertAll(stressData.map((final e) => e.toJson()).toList());
    await _lastCheckPointCollection.update(
      {
        'name': 'Stress',
      },
      {
        'name': 'Stress',
        'timestamp': pagingStartedAt,
      },
      upsert: true,
    );
  }

  Future<void> _loadChangesetAndPerformUpdates(
    final DateTime lastCheckPoint,
  ) async {
    print('Loading changeset for Stress');
    print('Since ${lastCheckPoint.toIso8601String()}');
    final List<Stress> stressData = [];
    bool hasNext = true;
    String? nextPageToken;
    DateTime newCheckPoint = DateTime.now();
    while (hasNext) {
      final response = await _client.getStressDataDiff(
        lastCheckPoint: lastCheckPoint,
        pageToken: nextPageToken,
      );
      stressData.addAll(response.data);
      hasNext = response.hasNext;
      nextPageToken = response.nextPageToken;
      newCheckPoint = response.checkPoint;
    }
    for (final stress in stressData) {
      // TODO: This is not efficient, but it's a PoC
      await _stressCollection.update(
        {
          'datauuid': stress.datauuid,
        },
        stress.toJson(),
        upsert: true,
      );
    }

    await _lastCheckPointCollection.update(
      {
        'name': 'Stress',
      },
      {
        'name': 'Stress',
        'timestamp': newCheckPoint,
      },
      upsert: true,
    );
  }
}
