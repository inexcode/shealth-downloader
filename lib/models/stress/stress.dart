import 'dart:convert';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shealth_downloader/models/datetime_converter.dart';

part 'stress.freezed.dart';
part 'stress.g.dart';

/// Stress internal data model
@freezed
class Stress with _$Stress {
  @JsonSerializable(explicitToJson: true)
  @DateTimeMillisecondsConverter()
  factory Stress({
    /// Unique ID
    required final String datauuid,

    /// Source device ID
    required final String deviceuuid,

    /// Source package name
    required final String pkgName,

    /// Created time of the measurement
    required final DateTime createTime,

    /// Updated time of the measurement
    required final DateTime updateTime,

    /// When the measurement was taken
    required final DateTime startTime,

    /// Time zone in which data is entered
    required final int timeOffset,

    /// End time of session measurement
    required final DateTime endTime,

    /// Stress score
    required final int score,

    /// Min. value of stress in this session
    required final int min,

    /// Max. value of stress in this session
    required final int max,

    /// Tag ID (default value: -1)
    required final int tagId,

    /// Detailed binning data of continuous stress
    required final List<StressBinningDataEntry> binningData,
  }) = _Stress;

  factory Stress.fromJson(final Map<String, dynamic> json) =>
      _$StressFromJson(json);
  factory Stress.fromEncodedJson(final Map<String, dynamic> json) {
    // The "binning_data" field is a base64-encoded gzip compressed string, which after decoding is JSON
    // First, we decode the base64 string to binary
    final binningData = json['binning_data'];
    final binningDataDecoded = base64.decode(binningData);
    // Then, we decompress the binary data, which is gzip
    final binningDataDecompressed = gzip.decode(binningDataDecoded);
    final binningDataJson = jsonDecode(utf8.decode(binningDataDecompressed));
    return Stress.fromJson(json..['binning_data'] = binningDataJson);
  }
}

@freezed
class StressBinningDataEntry with _$StressBinningDataEntry {
  @DateTimeMillisecondsConverter()
  factory StressBinningDataEntry({
    required final int score,
    required final int scoreMax,
    required final int scoreMin,
    required final int flag,
    required final int level,
    required final DateTime startTime,
    required final DateTime endTime,
  }) = _StressBinningDataEntry;

  factory StressBinningDataEntry.fromJson(final Map<String, dynamic> json) =>
      _$StressBinningDataEntryFromJson(json);
}
