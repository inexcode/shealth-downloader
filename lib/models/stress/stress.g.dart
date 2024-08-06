// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StressImpl _$$StressImplFromJson(Map<String, dynamic> json) => _$StressImpl(
      datauuid: json['datauuid'] as String,
      deviceuuid: json['deviceuuid'] as String,
      pkgName: json['pkg_name'] as String,
      createTime: const DateTimeMillisecondsConverter()
          .fromJson((json['create_time'] as num).toInt()),
      updateTime: const DateTimeMillisecondsConverter()
          .fromJson((json['update_time'] as num).toInt()),
      startTime: const DateTimeMillisecondsConverter()
          .fromJson((json['start_time'] as num).toInt()),
      timeOffset: (json['time_offset'] as num).toInt(),
      endTime: const DateTimeMillisecondsConverter()
          .fromJson((json['end_time'] as num).toInt()),
      score: (json['score'] as num).toInt(),
      min: (json['min'] as num).toInt(),
      max: (json['max'] as num).toInt(),
      tagId: (json['tag_id'] as num).toInt(),
      binningData: (json['binning_data'] as List<dynamic>)
          .map(
              (e) => StressBinningDataEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StressImplToJson(_$StressImpl instance) =>
    <String, dynamic>{
      'datauuid': instance.datauuid,
      'deviceuuid': instance.deviceuuid,
      'pkg_name': instance.pkgName,
      'create_time':
          const DateTimeMillisecondsConverter().toJson(instance.createTime),
      'update_time':
          const DateTimeMillisecondsConverter().toJson(instance.updateTime),
      'start_time':
          const DateTimeMillisecondsConverter().toJson(instance.startTime),
      'time_offset': instance.timeOffset,
      'end_time':
          const DateTimeMillisecondsConverter().toJson(instance.endTime),
      'score': instance.score,
      'min': instance.min,
      'max': instance.max,
      'tag_id': instance.tagId,
      'binning_data': instance.binningData.map((e) => e.toJson()).toList(),
    };

_$StressBinningDataEntryImpl _$$StressBinningDataEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$StressBinningDataEntryImpl(
      score: (json['score'] as num).toInt(),
      scoreMax: (json['score_max'] as num).toInt(),
      scoreMin: (json['score_min'] as num).toInt(),
      flag: (json['flag'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      startTime: const DateTimeMillisecondsConverter()
          .fromJson((json['start_time'] as num).toInt()),
      endTime: const DateTimeMillisecondsConverter()
          .fromJson((json['end_time'] as num).toInt()),
    );

Map<String, dynamic> _$$StressBinningDataEntryImplToJson(
        _$StressBinningDataEntryImpl instance) =>
    <String, dynamic>{
      'score': instance.score,
      'score_max': instance.scoreMax,
      'score_min': instance.scoreMin,
      'flag': instance.flag,
      'level': instance.level,
      'start_time':
          const DateTimeMillisecondsConverter().toJson(instance.startTime),
      'end_time':
          const DateTimeMillisecondsConverter().toJson(instance.endTime),
    };
