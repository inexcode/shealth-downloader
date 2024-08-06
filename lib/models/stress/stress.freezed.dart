// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Stress _$StressFromJson(Map<String, dynamic> json) {
  return _Stress.fromJson(json);
}

/// @nodoc
mixin _$Stress {
  /// Unique ID
  String get datauuid => throw _privateConstructorUsedError;

  /// Source device ID
  String get deviceuuid => throw _privateConstructorUsedError;

  /// Source package name
  String get pkgName => throw _privateConstructorUsedError;

  /// Created time of the measurement
  DateTime get createTime => throw _privateConstructorUsedError;

  /// Updated time of the measurement
  DateTime get updateTime => throw _privateConstructorUsedError;

  /// When the measurement was taken
  DateTime get startTime => throw _privateConstructorUsedError;

  /// Time zone in which data is entered
  int get timeOffset => throw _privateConstructorUsedError;

  /// End time of session measurement
  DateTime get endTime => throw _privateConstructorUsedError;

  /// Stress score
  int get score => throw _privateConstructorUsedError;

  /// Min. value of stress in this session
  int get min => throw _privateConstructorUsedError;

  /// Max. value of stress in this session
  int get max => throw _privateConstructorUsedError;

  /// Tag ID (default value: -1)
  int get tagId => throw _privateConstructorUsedError;

  /// Detailed binning data of continuous stress
  List<StressBinningDataEntry> get binningData =>
      throw _privateConstructorUsedError;

  /// Serializes this Stress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Stress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StressCopyWith<Stress> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StressCopyWith<$Res> {
  factory $StressCopyWith(Stress value, $Res Function(Stress) then) =
      _$StressCopyWithImpl<$Res, Stress>;
  @useResult
  $Res call(
      {String datauuid,
      String deviceuuid,
      String pkgName,
      DateTime createTime,
      DateTime updateTime,
      DateTime startTime,
      int timeOffset,
      DateTime endTime,
      int score,
      int min,
      int max,
      int tagId,
      List<StressBinningDataEntry> binningData});
}

/// @nodoc
class _$StressCopyWithImpl<$Res, $Val extends Stress>
    implements $StressCopyWith<$Res> {
  _$StressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Stress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datauuid = null,
    Object? deviceuuid = null,
    Object? pkgName = null,
    Object? createTime = null,
    Object? updateTime = null,
    Object? startTime = null,
    Object? timeOffset = null,
    Object? endTime = null,
    Object? score = null,
    Object? min = null,
    Object? max = null,
    Object? tagId = null,
    Object? binningData = null,
  }) {
    return _then(_value.copyWith(
      datauuid: null == datauuid
          ? _value.datauuid
          : datauuid // ignore: cast_nullable_to_non_nullable
              as String,
      deviceuuid: null == deviceuuid
          ? _value.deviceuuid
          : deviceuuid // ignore: cast_nullable_to_non_nullable
              as String,
      pkgName: null == pkgName
          ? _value.pkgName
          : pkgName // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeOffset: null == timeOffset
          ? _value.timeOffset
          : timeOffset // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      tagId: null == tagId
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as int,
      binningData: null == binningData
          ? _value.binningData
          : binningData // ignore: cast_nullable_to_non_nullable
              as List<StressBinningDataEntry>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StressImplCopyWith<$Res> implements $StressCopyWith<$Res> {
  factory _$$StressImplCopyWith(
          _$StressImpl value, $Res Function(_$StressImpl) then) =
      __$$StressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String datauuid,
      String deviceuuid,
      String pkgName,
      DateTime createTime,
      DateTime updateTime,
      DateTime startTime,
      int timeOffset,
      DateTime endTime,
      int score,
      int min,
      int max,
      int tagId,
      List<StressBinningDataEntry> binningData});
}

/// @nodoc
class __$$StressImplCopyWithImpl<$Res>
    extends _$StressCopyWithImpl<$Res, _$StressImpl>
    implements _$$StressImplCopyWith<$Res> {
  __$$StressImplCopyWithImpl(
      _$StressImpl _value, $Res Function(_$StressImpl) _then)
      : super(_value, _then);

  /// Create a copy of Stress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datauuid = null,
    Object? deviceuuid = null,
    Object? pkgName = null,
    Object? createTime = null,
    Object? updateTime = null,
    Object? startTime = null,
    Object? timeOffset = null,
    Object? endTime = null,
    Object? score = null,
    Object? min = null,
    Object? max = null,
    Object? tagId = null,
    Object? binningData = null,
  }) {
    return _then(_$StressImpl(
      datauuid: null == datauuid
          ? _value.datauuid
          : datauuid // ignore: cast_nullable_to_non_nullable
              as String,
      deviceuuid: null == deviceuuid
          ? _value.deviceuuid
          : deviceuuid // ignore: cast_nullable_to_non_nullable
              as String,
      pkgName: null == pkgName
          ? _value.pkgName
          : pkgName // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeOffset: null == timeOffset
          ? _value.timeOffset
          : timeOffset // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      tagId: null == tagId
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as int,
      binningData: null == binningData
          ? _value._binningData
          : binningData // ignore: cast_nullable_to_non_nullable
              as List<StressBinningDataEntry>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
@DateTimeMillisecondsConverter()
class _$StressImpl implements _Stress {
  _$StressImpl(
      {required this.datauuid,
      required this.deviceuuid,
      required this.pkgName,
      required this.createTime,
      required this.updateTime,
      required this.startTime,
      required this.timeOffset,
      required this.endTime,
      required this.score,
      required this.min,
      required this.max,
      required this.tagId,
      required final List<StressBinningDataEntry> binningData})
      : _binningData = binningData;

  factory _$StressImpl.fromJson(Map<String, dynamic> json) =>
      _$$StressImplFromJson(json);

  /// Unique ID
  @override
  final String datauuid;

  /// Source device ID
  @override
  final String deviceuuid;

  /// Source package name
  @override
  final String pkgName;

  /// Created time of the measurement
  @override
  final DateTime createTime;

  /// Updated time of the measurement
  @override
  final DateTime updateTime;

  /// When the measurement was taken
  @override
  final DateTime startTime;

  /// Time zone in which data is entered
  @override
  final int timeOffset;

  /// End time of session measurement
  @override
  final DateTime endTime;

  /// Stress score
  @override
  final int score;

  /// Min. value of stress in this session
  @override
  final int min;

  /// Max. value of stress in this session
  @override
  final int max;

  /// Tag ID (default value: -1)
  @override
  final int tagId;

  /// Detailed binning data of continuous stress
  final List<StressBinningDataEntry> _binningData;

  /// Detailed binning data of continuous stress
  @override
  List<StressBinningDataEntry> get binningData {
    if (_binningData is EqualUnmodifiableListView) return _binningData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_binningData);
  }

  @override
  String toString() {
    return 'Stress(datauuid: $datauuid, deviceuuid: $deviceuuid, pkgName: $pkgName, createTime: $createTime, updateTime: $updateTime, startTime: $startTime, timeOffset: $timeOffset, endTime: $endTime, score: $score, min: $min, max: $max, tagId: $tagId, binningData: $binningData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StressImpl &&
            (identical(other.datauuid, datauuid) ||
                other.datauuid == datauuid) &&
            (identical(other.deviceuuid, deviceuuid) ||
                other.deviceuuid == deviceuuid) &&
            (identical(other.pkgName, pkgName) || other.pkgName == pkgName) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.timeOffset, timeOffset) ||
                other.timeOffset == timeOffset) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.tagId, tagId) || other.tagId == tagId) &&
            const DeepCollectionEquality()
                .equals(other._binningData, _binningData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      datauuid,
      deviceuuid,
      pkgName,
      createTime,
      updateTime,
      startTime,
      timeOffset,
      endTime,
      score,
      min,
      max,
      tagId,
      const DeepCollectionEquality().hash(_binningData));

  /// Create a copy of Stress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StressImplCopyWith<_$StressImpl> get copyWith =>
      __$$StressImplCopyWithImpl<_$StressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StressImplToJson(
      this,
    );
  }
}

abstract class _Stress implements Stress {
  factory _Stress(
      {required final String datauuid,
      required final String deviceuuid,
      required final String pkgName,
      required final DateTime createTime,
      required final DateTime updateTime,
      required final DateTime startTime,
      required final int timeOffset,
      required final DateTime endTime,
      required final int score,
      required final int min,
      required final int max,
      required final int tagId,
      required final List<StressBinningDataEntry> binningData}) = _$StressImpl;

  factory _Stress.fromJson(Map<String, dynamic> json) = _$StressImpl.fromJson;

  /// Unique ID
  @override
  String get datauuid;

  /// Source device ID
  @override
  String get deviceuuid;

  /// Source package name
  @override
  String get pkgName;

  /// Created time of the measurement
  @override
  DateTime get createTime;

  /// Updated time of the measurement
  @override
  DateTime get updateTime;

  /// When the measurement was taken
  @override
  DateTime get startTime;

  /// Time zone in which data is entered
  @override
  int get timeOffset;

  /// End time of session measurement
  @override
  DateTime get endTime;

  /// Stress score
  @override
  int get score;

  /// Min. value of stress in this session
  @override
  int get min;

  /// Max. value of stress in this session
  @override
  int get max;

  /// Tag ID (default value: -1)
  @override
  int get tagId;

  /// Detailed binning data of continuous stress
  @override
  List<StressBinningDataEntry> get binningData;

  /// Create a copy of Stress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StressImplCopyWith<_$StressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StressBinningDataEntry _$StressBinningDataEntryFromJson(
    Map<String, dynamic> json) {
  return _StressBinningDataEntry.fromJson(json);
}

/// @nodoc
mixin _$StressBinningDataEntry {
  int get score => throw _privateConstructorUsedError;
  int get scoreMax => throw _privateConstructorUsedError;
  int get scoreMin => throw _privateConstructorUsedError;
  int get flag => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;

  /// Serializes this StressBinningDataEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StressBinningDataEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StressBinningDataEntryCopyWith<StressBinningDataEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StressBinningDataEntryCopyWith<$Res> {
  factory $StressBinningDataEntryCopyWith(StressBinningDataEntry value,
          $Res Function(StressBinningDataEntry) then) =
      _$StressBinningDataEntryCopyWithImpl<$Res, StressBinningDataEntry>;
  @useResult
  $Res call(
      {int score,
      int scoreMax,
      int scoreMin,
      int flag,
      int level,
      DateTime startTime,
      DateTime endTime});
}

/// @nodoc
class _$StressBinningDataEntryCopyWithImpl<$Res,
        $Val extends StressBinningDataEntry>
    implements $StressBinningDataEntryCopyWith<$Res> {
  _$StressBinningDataEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StressBinningDataEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? scoreMax = null,
    Object? scoreMin = null,
    Object? flag = null,
    Object? level = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      scoreMax: null == scoreMax
          ? _value.scoreMax
          : scoreMax // ignore: cast_nullable_to_non_nullable
              as int,
      scoreMin: null == scoreMin
          ? _value.scoreMin
          : scoreMin // ignore: cast_nullable_to_non_nullable
              as int,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StressBinningDataEntryImplCopyWith<$Res>
    implements $StressBinningDataEntryCopyWith<$Res> {
  factory _$$StressBinningDataEntryImplCopyWith(
          _$StressBinningDataEntryImpl value,
          $Res Function(_$StressBinningDataEntryImpl) then) =
      __$$StressBinningDataEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int score,
      int scoreMax,
      int scoreMin,
      int flag,
      int level,
      DateTime startTime,
      DateTime endTime});
}

/// @nodoc
class __$$StressBinningDataEntryImplCopyWithImpl<$Res>
    extends _$StressBinningDataEntryCopyWithImpl<$Res,
        _$StressBinningDataEntryImpl>
    implements _$$StressBinningDataEntryImplCopyWith<$Res> {
  __$$StressBinningDataEntryImplCopyWithImpl(
      _$StressBinningDataEntryImpl _value,
      $Res Function(_$StressBinningDataEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of StressBinningDataEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? scoreMax = null,
    Object? scoreMin = null,
    Object? flag = null,
    Object? level = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$StressBinningDataEntryImpl(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      scoreMax: null == scoreMax
          ? _value.scoreMax
          : scoreMax // ignore: cast_nullable_to_non_nullable
              as int,
      scoreMin: null == scoreMin
          ? _value.scoreMin
          : scoreMin // ignore: cast_nullable_to_non_nullable
              as int,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@DateTimeMillisecondsConverter()
class _$StressBinningDataEntryImpl implements _StressBinningDataEntry {
  _$StressBinningDataEntryImpl(
      {required this.score,
      required this.scoreMax,
      required this.scoreMin,
      required this.flag,
      required this.level,
      required this.startTime,
      required this.endTime});

  factory _$StressBinningDataEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StressBinningDataEntryImplFromJson(json);

  @override
  final int score;
  @override
  final int scoreMax;
  @override
  final int scoreMin;
  @override
  final int flag;
  @override
  final int level;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;

  @override
  String toString() {
    return 'StressBinningDataEntry(score: $score, scoreMax: $scoreMax, scoreMin: $scoreMin, flag: $flag, level: $level, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StressBinningDataEntryImpl &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.scoreMax, scoreMax) ||
                other.scoreMax == scoreMax) &&
            (identical(other.scoreMin, scoreMin) ||
                other.scoreMin == scoreMin) &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, score, scoreMax, scoreMin, flag, level, startTime, endTime);

  /// Create a copy of StressBinningDataEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StressBinningDataEntryImplCopyWith<_$StressBinningDataEntryImpl>
      get copyWith => __$$StressBinningDataEntryImplCopyWithImpl<
          _$StressBinningDataEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StressBinningDataEntryImplToJson(
      this,
    );
  }
}

abstract class _StressBinningDataEntry implements StressBinningDataEntry {
  factory _StressBinningDataEntry(
      {required final int score,
      required final int scoreMax,
      required final int scoreMin,
      required final int flag,
      required final int level,
      required final DateTime startTime,
      required final DateTime endTime}) = _$StressBinningDataEntryImpl;

  factory _StressBinningDataEntry.fromJson(Map<String, dynamic> json) =
      _$StressBinningDataEntryImpl.fromJson;

  @override
  int get score;
  @override
  int get scoreMax;
  @override
  int get scoreMin;
  @override
  int get flag;
  @override
  int get level;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;

  /// Create a copy of StressBinningDataEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StressBinningDataEntryImplCopyWith<_$StressBinningDataEntryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
