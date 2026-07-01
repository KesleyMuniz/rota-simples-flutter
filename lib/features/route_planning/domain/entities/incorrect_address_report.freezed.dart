// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'incorrect_address_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IncorrectAddressReport {

 String? get note; DateTime get timestamp; String get reportedAddress; String? get reportedNeighborhood; String? get reportedCity; String? get reportedZipCode; Coordinates get reportedCoordinates;
/// Create a copy of IncorrectAddressReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncorrectAddressReportCopyWith<IncorrectAddressReport> get copyWith => _$IncorrectAddressReportCopyWithImpl<IncorrectAddressReport>(this as IncorrectAddressReport, _$identity);

  /// Serializes this IncorrectAddressReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncorrectAddressReport&&(identical(other.note, note) || other.note == note)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.reportedAddress, reportedAddress) || other.reportedAddress == reportedAddress)&&(identical(other.reportedNeighborhood, reportedNeighborhood) || other.reportedNeighborhood == reportedNeighborhood)&&(identical(other.reportedCity, reportedCity) || other.reportedCity == reportedCity)&&(identical(other.reportedZipCode, reportedZipCode) || other.reportedZipCode == reportedZipCode)&&(identical(other.reportedCoordinates, reportedCoordinates) || other.reportedCoordinates == reportedCoordinates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,note,timestamp,reportedAddress,reportedNeighborhood,reportedCity,reportedZipCode,reportedCoordinates);

@override
String toString() {
  return 'IncorrectAddressReport(note: $note, timestamp: $timestamp, reportedAddress: $reportedAddress, reportedNeighborhood: $reportedNeighborhood, reportedCity: $reportedCity, reportedZipCode: $reportedZipCode, reportedCoordinates: $reportedCoordinates)';
}


}

/// @nodoc
abstract mixin class $IncorrectAddressReportCopyWith<$Res>  {
  factory $IncorrectAddressReportCopyWith(IncorrectAddressReport value, $Res Function(IncorrectAddressReport) _then) = _$IncorrectAddressReportCopyWithImpl;
@useResult
$Res call({
 String? note, DateTime timestamp, String reportedAddress, String? reportedNeighborhood, String? reportedCity, String? reportedZipCode, Coordinates reportedCoordinates
});


$CoordinatesCopyWith<$Res> get reportedCoordinates;

}
/// @nodoc
class _$IncorrectAddressReportCopyWithImpl<$Res>
    implements $IncorrectAddressReportCopyWith<$Res> {
  _$IncorrectAddressReportCopyWithImpl(this._self, this._then);

  final IncorrectAddressReport _self;
  final $Res Function(IncorrectAddressReport) _then;

/// Create a copy of IncorrectAddressReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? note = freezed,Object? timestamp = null,Object? reportedAddress = null,Object? reportedNeighborhood = freezed,Object? reportedCity = freezed,Object? reportedZipCode = freezed,Object? reportedCoordinates = null,}) {
  return _then(_self.copyWith(
note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,reportedAddress: null == reportedAddress ? _self.reportedAddress : reportedAddress // ignore: cast_nullable_to_non_nullable
as String,reportedNeighborhood: freezed == reportedNeighborhood ? _self.reportedNeighborhood : reportedNeighborhood // ignore: cast_nullable_to_non_nullable
as String?,reportedCity: freezed == reportedCity ? _self.reportedCity : reportedCity // ignore: cast_nullable_to_non_nullable
as String?,reportedZipCode: freezed == reportedZipCode ? _self.reportedZipCode : reportedZipCode // ignore: cast_nullable_to_non_nullable
as String?,reportedCoordinates: null == reportedCoordinates ? _self.reportedCoordinates : reportedCoordinates // ignore: cast_nullable_to_non_nullable
as Coordinates,
  ));
}
/// Create a copy of IncorrectAddressReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<$Res> get reportedCoordinates {
  
  return $CoordinatesCopyWith<$Res>(_self.reportedCoordinates, (value) {
    return _then(_self.copyWith(reportedCoordinates: value));
  });
}
}


/// Adds pattern-matching-related methods to [IncorrectAddressReport].
extension IncorrectAddressReportPatterns on IncorrectAddressReport {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IncorrectAddressReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IncorrectAddressReport() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IncorrectAddressReport value)  $default,){
final _that = this;
switch (_that) {
case _IncorrectAddressReport():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IncorrectAddressReport value)?  $default,){
final _that = this;
switch (_that) {
case _IncorrectAddressReport() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? note,  DateTime timestamp,  String reportedAddress,  String? reportedNeighborhood,  String? reportedCity,  String? reportedZipCode,  Coordinates reportedCoordinates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IncorrectAddressReport() when $default != null:
return $default(_that.note,_that.timestamp,_that.reportedAddress,_that.reportedNeighborhood,_that.reportedCity,_that.reportedZipCode,_that.reportedCoordinates);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? note,  DateTime timestamp,  String reportedAddress,  String? reportedNeighborhood,  String? reportedCity,  String? reportedZipCode,  Coordinates reportedCoordinates)  $default,) {final _that = this;
switch (_that) {
case _IncorrectAddressReport():
return $default(_that.note,_that.timestamp,_that.reportedAddress,_that.reportedNeighborhood,_that.reportedCity,_that.reportedZipCode,_that.reportedCoordinates);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? note,  DateTime timestamp,  String reportedAddress,  String? reportedNeighborhood,  String? reportedCity,  String? reportedZipCode,  Coordinates reportedCoordinates)?  $default,) {final _that = this;
switch (_that) {
case _IncorrectAddressReport() when $default != null:
return $default(_that.note,_that.timestamp,_that.reportedAddress,_that.reportedNeighborhood,_that.reportedCity,_that.reportedZipCode,_that.reportedCoordinates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IncorrectAddressReport implements IncorrectAddressReport {
  const _IncorrectAddressReport({this.note, required this.timestamp, required this.reportedAddress, this.reportedNeighborhood, this.reportedCity, this.reportedZipCode, required this.reportedCoordinates});
  factory _IncorrectAddressReport.fromJson(Map<String, dynamic> json) => _$IncorrectAddressReportFromJson(json);

@override final  String? note;
@override final  DateTime timestamp;
@override final  String reportedAddress;
@override final  String? reportedNeighborhood;
@override final  String? reportedCity;
@override final  String? reportedZipCode;
@override final  Coordinates reportedCoordinates;

/// Create a copy of IncorrectAddressReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IncorrectAddressReportCopyWith<_IncorrectAddressReport> get copyWith => __$IncorrectAddressReportCopyWithImpl<_IncorrectAddressReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IncorrectAddressReportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IncorrectAddressReport&&(identical(other.note, note) || other.note == note)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.reportedAddress, reportedAddress) || other.reportedAddress == reportedAddress)&&(identical(other.reportedNeighborhood, reportedNeighborhood) || other.reportedNeighborhood == reportedNeighborhood)&&(identical(other.reportedCity, reportedCity) || other.reportedCity == reportedCity)&&(identical(other.reportedZipCode, reportedZipCode) || other.reportedZipCode == reportedZipCode)&&(identical(other.reportedCoordinates, reportedCoordinates) || other.reportedCoordinates == reportedCoordinates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,note,timestamp,reportedAddress,reportedNeighborhood,reportedCity,reportedZipCode,reportedCoordinates);

@override
String toString() {
  return 'IncorrectAddressReport(note: $note, timestamp: $timestamp, reportedAddress: $reportedAddress, reportedNeighborhood: $reportedNeighborhood, reportedCity: $reportedCity, reportedZipCode: $reportedZipCode, reportedCoordinates: $reportedCoordinates)';
}


}

/// @nodoc
abstract mixin class _$IncorrectAddressReportCopyWith<$Res> implements $IncorrectAddressReportCopyWith<$Res> {
  factory _$IncorrectAddressReportCopyWith(_IncorrectAddressReport value, $Res Function(_IncorrectAddressReport) _then) = __$IncorrectAddressReportCopyWithImpl;
@override @useResult
$Res call({
 String? note, DateTime timestamp, String reportedAddress, String? reportedNeighborhood, String? reportedCity, String? reportedZipCode, Coordinates reportedCoordinates
});


@override $CoordinatesCopyWith<$Res> get reportedCoordinates;

}
/// @nodoc
class __$IncorrectAddressReportCopyWithImpl<$Res>
    implements _$IncorrectAddressReportCopyWith<$Res> {
  __$IncorrectAddressReportCopyWithImpl(this._self, this._then);

  final _IncorrectAddressReport _self;
  final $Res Function(_IncorrectAddressReport) _then;

/// Create a copy of IncorrectAddressReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? note = freezed,Object? timestamp = null,Object? reportedAddress = null,Object? reportedNeighborhood = freezed,Object? reportedCity = freezed,Object? reportedZipCode = freezed,Object? reportedCoordinates = null,}) {
  return _then(_IncorrectAddressReport(
note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,reportedAddress: null == reportedAddress ? _self.reportedAddress : reportedAddress // ignore: cast_nullable_to_non_nullable
as String,reportedNeighborhood: freezed == reportedNeighborhood ? _self.reportedNeighborhood : reportedNeighborhood // ignore: cast_nullable_to_non_nullable
as String?,reportedCity: freezed == reportedCity ? _self.reportedCity : reportedCity // ignore: cast_nullable_to_non_nullable
as String?,reportedZipCode: freezed == reportedZipCode ? _self.reportedZipCode : reportedZipCode // ignore: cast_nullable_to_non_nullable
as String?,reportedCoordinates: null == reportedCoordinates ? _self.reportedCoordinates : reportedCoordinates // ignore: cast_nullable_to_non_nullable
as Coordinates,
  ));
}

/// Create a copy of IncorrectAddressReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<$Res> get reportedCoordinates {
  
  return $CoordinatesCopyWith<$Res>(_self.reportedCoordinates, (value) {
    return _then(_self.copyWith(reportedCoordinates: value));
  });
}
}

// dart format on
