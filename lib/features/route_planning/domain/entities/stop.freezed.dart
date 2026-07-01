// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Stop {

 String get id; String get address; String? get streetNumber; String? get neighborhood; String? get city; String? get zipCode; Coordinates get coordinates; String? get orderNumber; String? get note; StopStatus get status; GeocodingConfidence get geocodingConfidence; bool get hasGroupingConflict; List<IncorrectAddressReport> get incorrectAddressReports; List<Box> get boxes; String? get priorityGroupId;
/// Create a copy of Stop
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StopCopyWith<Stop> get copyWith => _$StopCopyWithImpl<Stop>(this as Stop, _$identity);

  /// Serializes this Stop to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Stop&&(identical(other.id, id) || other.id == id)&&(identical(other.address, address) || other.address == address)&&(identical(other.streetNumber, streetNumber) || other.streetNumber == streetNumber)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.city, city) || other.city == city)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.note, note) || other.note == note)&&(identical(other.status, status) || other.status == status)&&(identical(other.geocodingConfidence, geocodingConfidence) || other.geocodingConfidence == geocodingConfidence)&&(identical(other.hasGroupingConflict, hasGroupingConflict) || other.hasGroupingConflict == hasGroupingConflict)&&const DeepCollectionEquality().equals(other.incorrectAddressReports, incorrectAddressReports)&&const DeepCollectionEquality().equals(other.boxes, boxes)&&(identical(other.priorityGroupId, priorityGroupId) || other.priorityGroupId == priorityGroupId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,address,streetNumber,neighborhood,city,zipCode,coordinates,orderNumber,note,status,geocodingConfidence,hasGroupingConflict,const DeepCollectionEquality().hash(incorrectAddressReports),const DeepCollectionEquality().hash(boxes),priorityGroupId);

@override
String toString() {
  return 'Stop(id: $id, address: $address, streetNumber: $streetNumber, neighborhood: $neighborhood, city: $city, zipCode: $zipCode, coordinates: $coordinates, orderNumber: $orderNumber, note: $note, status: $status, geocodingConfidence: $geocodingConfidence, hasGroupingConflict: $hasGroupingConflict, incorrectAddressReports: $incorrectAddressReports, boxes: $boxes, priorityGroupId: $priorityGroupId)';
}


}

/// @nodoc
abstract mixin class $StopCopyWith<$Res>  {
  factory $StopCopyWith(Stop value, $Res Function(Stop) _then) = _$StopCopyWithImpl;
@useResult
$Res call({
 String id, String address, String? streetNumber, String? neighborhood, String? city, String? zipCode, Coordinates coordinates, String? orderNumber, String? note, StopStatus status, GeocodingConfidence geocodingConfidence, bool hasGroupingConflict, List<IncorrectAddressReport> incorrectAddressReports, List<Box> boxes, String? priorityGroupId
});


$CoordinatesCopyWith<$Res> get coordinates;

}
/// @nodoc
class _$StopCopyWithImpl<$Res>
    implements $StopCopyWith<$Res> {
  _$StopCopyWithImpl(this._self, this._then);

  final Stop _self;
  final $Res Function(Stop) _then;

/// Create a copy of Stop
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? address = null,Object? streetNumber = freezed,Object? neighborhood = freezed,Object? city = freezed,Object? zipCode = freezed,Object? coordinates = null,Object? orderNumber = freezed,Object? note = freezed,Object? status = null,Object? geocodingConfidence = null,Object? hasGroupingConflict = null,Object? incorrectAddressReports = null,Object? boxes = null,Object? priorityGroupId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,streetNumber: freezed == streetNumber ? _self.streetNumber : streetNumber // ignore: cast_nullable_to_non_nullable
as String?,neighborhood: freezed == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as Coordinates,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StopStatus,geocodingConfidence: null == geocodingConfidence ? _self.geocodingConfidence : geocodingConfidence // ignore: cast_nullable_to_non_nullable
as GeocodingConfidence,hasGroupingConflict: null == hasGroupingConflict ? _self.hasGroupingConflict : hasGroupingConflict // ignore: cast_nullable_to_non_nullable
as bool,incorrectAddressReports: null == incorrectAddressReports ? _self.incorrectAddressReports : incorrectAddressReports // ignore: cast_nullable_to_non_nullable
as List<IncorrectAddressReport>,boxes: null == boxes ? _self.boxes : boxes // ignore: cast_nullable_to_non_nullable
as List<Box>,priorityGroupId: freezed == priorityGroupId ? _self.priorityGroupId : priorityGroupId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Stop
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<$Res> get coordinates {
  
  return $CoordinatesCopyWith<$Res>(_self.coordinates, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}
}


/// Adds pattern-matching-related methods to [Stop].
extension StopPatterns on Stop {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Stop value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Stop() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Stop value)  $default,){
final _that = this;
switch (_that) {
case _Stop():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Stop value)?  $default,){
final _that = this;
switch (_that) {
case _Stop() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String address,  String? streetNumber,  String? neighborhood,  String? city,  String? zipCode,  Coordinates coordinates,  String? orderNumber,  String? note,  StopStatus status,  GeocodingConfidence geocodingConfidence,  bool hasGroupingConflict,  List<IncorrectAddressReport> incorrectAddressReports,  List<Box> boxes,  String? priorityGroupId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Stop() when $default != null:
return $default(_that.id,_that.address,_that.streetNumber,_that.neighborhood,_that.city,_that.zipCode,_that.coordinates,_that.orderNumber,_that.note,_that.status,_that.geocodingConfidence,_that.hasGroupingConflict,_that.incorrectAddressReports,_that.boxes,_that.priorityGroupId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String address,  String? streetNumber,  String? neighborhood,  String? city,  String? zipCode,  Coordinates coordinates,  String? orderNumber,  String? note,  StopStatus status,  GeocodingConfidence geocodingConfidence,  bool hasGroupingConflict,  List<IncorrectAddressReport> incorrectAddressReports,  List<Box> boxes,  String? priorityGroupId)  $default,) {final _that = this;
switch (_that) {
case _Stop():
return $default(_that.id,_that.address,_that.streetNumber,_that.neighborhood,_that.city,_that.zipCode,_that.coordinates,_that.orderNumber,_that.note,_that.status,_that.geocodingConfidence,_that.hasGroupingConflict,_that.incorrectAddressReports,_that.boxes,_that.priorityGroupId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String address,  String? streetNumber,  String? neighborhood,  String? city,  String? zipCode,  Coordinates coordinates,  String? orderNumber,  String? note,  StopStatus status,  GeocodingConfidence geocodingConfidence,  bool hasGroupingConflict,  List<IncorrectAddressReport> incorrectAddressReports,  List<Box> boxes,  String? priorityGroupId)?  $default,) {final _that = this;
switch (_that) {
case _Stop() when $default != null:
return $default(_that.id,_that.address,_that.streetNumber,_that.neighborhood,_that.city,_that.zipCode,_that.coordinates,_that.orderNumber,_that.note,_that.status,_that.geocodingConfidence,_that.hasGroupingConflict,_that.incorrectAddressReports,_that.boxes,_that.priorityGroupId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Stop implements Stop {
  const _Stop({required this.id, required this.address, this.streetNumber, this.neighborhood, this.city, this.zipCode, required this.coordinates, this.orderNumber, this.note, required this.status, required this.geocodingConfidence, required this.hasGroupingConflict, final  List<IncorrectAddressReport> incorrectAddressReports = const <IncorrectAddressReport>[], required final  List<Box> boxes, this.priorityGroupId}): _incorrectAddressReports = incorrectAddressReports,_boxes = boxes;
  factory _Stop.fromJson(Map<String, dynamic> json) => _$StopFromJson(json);

@override final  String id;
@override final  String address;
@override final  String? streetNumber;
@override final  String? neighborhood;
@override final  String? city;
@override final  String? zipCode;
@override final  Coordinates coordinates;
@override final  String? orderNumber;
@override final  String? note;
@override final  StopStatus status;
@override final  GeocodingConfidence geocodingConfidence;
@override final  bool hasGroupingConflict;
 final  List<IncorrectAddressReport> _incorrectAddressReports;
@override@JsonKey() List<IncorrectAddressReport> get incorrectAddressReports {
  if (_incorrectAddressReports is EqualUnmodifiableListView) return _incorrectAddressReports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_incorrectAddressReports);
}

 final  List<Box> _boxes;
@override List<Box> get boxes {
  if (_boxes is EqualUnmodifiableListView) return _boxes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_boxes);
}

@override final  String? priorityGroupId;

/// Create a copy of Stop
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StopCopyWith<_Stop> get copyWith => __$StopCopyWithImpl<_Stop>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StopToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Stop&&(identical(other.id, id) || other.id == id)&&(identical(other.address, address) || other.address == address)&&(identical(other.streetNumber, streetNumber) || other.streetNumber == streetNumber)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.city, city) || other.city == city)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.coordinates, coordinates) || other.coordinates == coordinates)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.note, note) || other.note == note)&&(identical(other.status, status) || other.status == status)&&(identical(other.geocodingConfidence, geocodingConfidence) || other.geocodingConfidence == geocodingConfidence)&&(identical(other.hasGroupingConflict, hasGroupingConflict) || other.hasGroupingConflict == hasGroupingConflict)&&const DeepCollectionEquality().equals(other._incorrectAddressReports, _incorrectAddressReports)&&const DeepCollectionEquality().equals(other._boxes, _boxes)&&(identical(other.priorityGroupId, priorityGroupId) || other.priorityGroupId == priorityGroupId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,address,streetNumber,neighborhood,city,zipCode,coordinates,orderNumber,note,status,geocodingConfidence,hasGroupingConflict,const DeepCollectionEquality().hash(_incorrectAddressReports),const DeepCollectionEquality().hash(_boxes),priorityGroupId);

@override
String toString() {
  return 'Stop(id: $id, address: $address, streetNumber: $streetNumber, neighborhood: $neighborhood, city: $city, zipCode: $zipCode, coordinates: $coordinates, orderNumber: $orderNumber, note: $note, status: $status, geocodingConfidence: $geocodingConfidence, hasGroupingConflict: $hasGroupingConflict, incorrectAddressReports: $incorrectAddressReports, boxes: $boxes, priorityGroupId: $priorityGroupId)';
}


}

/// @nodoc
abstract mixin class _$StopCopyWith<$Res> implements $StopCopyWith<$Res> {
  factory _$StopCopyWith(_Stop value, $Res Function(_Stop) _then) = __$StopCopyWithImpl;
@override @useResult
$Res call({
 String id, String address, String? streetNumber, String? neighborhood, String? city, String? zipCode, Coordinates coordinates, String? orderNumber, String? note, StopStatus status, GeocodingConfidence geocodingConfidence, bool hasGroupingConflict, List<IncorrectAddressReport> incorrectAddressReports, List<Box> boxes, String? priorityGroupId
});


@override $CoordinatesCopyWith<$Res> get coordinates;

}
/// @nodoc
class __$StopCopyWithImpl<$Res>
    implements _$StopCopyWith<$Res> {
  __$StopCopyWithImpl(this._self, this._then);

  final _Stop _self;
  final $Res Function(_Stop) _then;

/// Create a copy of Stop
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? address = null,Object? streetNumber = freezed,Object? neighborhood = freezed,Object? city = freezed,Object? zipCode = freezed,Object? coordinates = null,Object? orderNumber = freezed,Object? note = freezed,Object? status = null,Object? geocodingConfidence = null,Object? hasGroupingConflict = null,Object? incorrectAddressReports = null,Object? boxes = null,Object? priorityGroupId = freezed,}) {
  return _then(_Stop(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,streetNumber: freezed == streetNumber ? _self.streetNumber : streetNumber // ignore: cast_nullable_to_non_nullable
as String?,neighborhood: freezed == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as Coordinates,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StopStatus,geocodingConfidence: null == geocodingConfidence ? _self.geocodingConfidence : geocodingConfidence // ignore: cast_nullable_to_non_nullable
as GeocodingConfidence,hasGroupingConflict: null == hasGroupingConflict ? _self.hasGroupingConflict : hasGroupingConflict // ignore: cast_nullable_to_non_nullable
as bool,incorrectAddressReports: null == incorrectAddressReports ? _self._incorrectAddressReports : incorrectAddressReports // ignore: cast_nullable_to_non_nullable
as List<IncorrectAddressReport>,boxes: null == boxes ? _self._boxes : boxes // ignore: cast_nullable_to_non_nullable
as List<Box>,priorityGroupId: freezed == priorityGroupId ? _self.priorityGroupId : priorityGroupId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Stop
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CoordinatesCopyWith<$Res> get coordinates {
  
  return $CoordinatesCopyWith<$Res>(_self.coordinates, (value) {
    return _then(_self.copyWith(coordinates: value));
  });
}
}

// dart format on
