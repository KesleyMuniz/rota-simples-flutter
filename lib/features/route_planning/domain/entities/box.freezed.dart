// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Box {

 String get id; String get trackingNumber; String? get recipientName;
/// Create a copy of Box
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BoxCopyWith<Box> get copyWith => _$BoxCopyWithImpl<Box>(this as Box, _$identity);

  /// Serializes this Box to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Box&&(identical(other.id, id) || other.id == id)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,trackingNumber,recipientName);

@override
String toString() {
  return 'Box(id: $id, trackingNumber: $trackingNumber, recipientName: $recipientName)';
}


}

/// @nodoc
abstract mixin class $BoxCopyWith<$Res>  {
  factory $BoxCopyWith(Box value, $Res Function(Box) _then) = _$BoxCopyWithImpl;
@useResult
$Res call({
 String id, String trackingNumber, String? recipientName
});




}
/// @nodoc
class _$BoxCopyWithImpl<$Res>
    implements $BoxCopyWith<$Res> {
  _$BoxCopyWithImpl(this._self, this._then);

  final Box _self;
  final $Res Function(Box) _then;

/// Create a copy of Box
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? trackingNumber = null,Object? recipientName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,recipientName: freezed == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Box].
extension BoxPatterns on Box {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Box value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Box() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Box value)  $default,){
final _that = this;
switch (_that) {
case _Box():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Box value)?  $default,){
final _that = this;
switch (_that) {
case _Box() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String trackingNumber,  String? recipientName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Box() when $default != null:
return $default(_that.id,_that.trackingNumber,_that.recipientName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String trackingNumber,  String? recipientName)  $default,) {final _that = this;
switch (_that) {
case _Box():
return $default(_that.id,_that.trackingNumber,_that.recipientName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String trackingNumber,  String? recipientName)?  $default,) {final _that = this;
switch (_that) {
case _Box() when $default != null:
return $default(_that.id,_that.trackingNumber,_that.recipientName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Box implements Box {
  const _Box({required this.id, required this.trackingNumber, this.recipientName});
  factory _Box.fromJson(Map<String, dynamic> json) => _$BoxFromJson(json);

@override final  String id;
@override final  String trackingNumber;
@override final  String? recipientName;

/// Create a copy of Box
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BoxCopyWith<_Box> get copyWith => __$BoxCopyWithImpl<_Box>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BoxToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Box&&(identical(other.id, id) || other.id == id)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,trackingNumber,recipientName);

@override
String toString() {
  return 'Box(id: $id, trackingNumber: $trackingNumber, recipientName: $recipientName)';
}


}

/// @nodoc
abstract mixin class _$BoxCopyWith<$Res> implements $BoxCopyWith<$Res> {
  factory _$BoxCopyWith(_Box value, $Res Function(_Box) _then) = __$BoxCopyWithImpl;
@override @useResult
$Res call({
 String id, String trackingNumber, String? recipientName
});




}
/// @nodoc
class __$BoxCopyWithImpl<$Res>
    implements _$BoxCopyWith<$Res> {
  __$BoxCopyWithImpl(this._self, this._then);

  final _Box _self;
  final $Res Function(_Box) _then;

/// Create a copy of Box
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? trackingNumber = null,Object? recipientName = freezed,}) {
  return _then(_Box(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,recipientName: freezed == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
