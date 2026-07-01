// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Shift {

 String get id; String get userId; ShiftStatus get status; List<Stop> get stops; List<String>? get optimizedOrder; List<PriorityGroup>? get priorityGroups; DateTime? get startedAt; DateTime? get completedAt;
/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShiftCopyWith<Shift> get copyWith => _$ShiftCopyWithImpl<Shift>(this as Shift, _$identity);

  /// Serializes this Shift to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Shift&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.stops, stops)&&const DeepCollectionEquality().equals(other.optimizedOrder, optimizedOrder)&&const DeepCollectionEquality().equals(other.priorityGroups, priorityGroups)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,status,const DeepCollectionEquality().hash(stops),const DeepCollectionEquality().hash(optimizedOrder),const DeepCollectionEquality().hash(priorityGroups),startedAt,completedAt);

@override
String toString() {
  return 'Shift(id: $id, userId: $userId, status: $status, stops: $stops, optimizedOrder: $optimizedOrder, priorityGroups: $priorityGroups, startedAt: $startedAt, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class $ShiftCopyWith<$Res>  {
  factory $ShiftCopyWith(Shift value, $Res Function(Shift) _then) = _$ShiftCopyWithImpl;
@useResult
$Res call({
 String id, String userId, ShiftStatus status, List<Stop> stops, List<String>? optimizedOrder, List<PriorityGroup>? priorityGroups, DateTime? startedAt, DateTime? completedAt
});




}
/// @nodoc
class _$ShiftCopyWithImpl<$Res>
    implements $ShiftCopyWith<$Res> {
  _$ShiftCopyWithImpl(this._self, this._then);

  final Shift _self;
  final $Res Function(Shift) _then;

/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? status = null,Object? stops = null,Object? optimizedOrder = freezed,Object? priorityGroups = freezed,Object? startedAt = freezed,Object? completedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShiftStatus,stops: null == stops ? _self.stops : stops // ignore: cast_nullable_to_non_nullable
as List<Stop>,optimizedOrder: freezed == optimizedOrder ? _self.optimizedOrder : optimizedOrder // ignore: cast_nullable_to_non_nullable
as List<String>?,priorityGroups: freezed == priorityGroups ? _self.priorityGroups : priorityGroups // ignore: cast_nullable_to_non_nullable
as List<PriorityGroup>?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Shift].
extension ShiftPatterns on Shift {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Shift value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Shift() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Shift value)  $default,){
final _that = this;
switch (_that) {
case _Shift():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Shift value)?  $default,){
final _that = this;
switch (_that) {
case _Shift() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  ShiftStatus status,  List<Stop> stops,  List<String>? optimizedOrder,  List<PriorityGroup>? priorityGroups,  DateTime? startedAt,  DateTime? completedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Shift() when $default != null:
return $default(_that.id,_that.userId,_that.status,_that.stops,_that.optimizedOrder,_that.priorityGroups,_that.startedAt,_that.completedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  ShiftStatus status,  List<Stop> stops,  List<String>? optimizedOrder,  List<PriorityGroup>? priorityGroups,  DateTime? startedAt,  DateTime? completedAt)  $default,) {final _that = this;
switch (_that) {
case _Shift():
return $default(_that.id,_that.userId,_that.status,_that.stops,_that.optimizedOrder,_that.priorityGroups,_that.startedAt,_that.completedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  ShiftStatus status,  List<Stop> stops,  List<String>? optimizedOrder,  List<PriorityGroup>? priorityGroups,  DateTime? startedAt,  DateTime? completedAt)?  $default,) {final _that = this;
switch (_that) {
case _Shift() when $default != null:
return $default(_that.id,_that.userId,_that.status,_that.stops,_that.optimizedOrder,_that.priorityGroups,_that.startedAt,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Shift implements Shift {
  const _Shift({required this.id, required this.userId, required this.status, final  List<Stop> stops = const <Stop>[], final  List<String>? optimizedOrder, final  List<PriorityGroup>? priorityGroups, this.startedAt, this.completedAt}): _stops = stops,_optimizedOrder = optimizedOrder,_priorityGroups = priorityGroups;
  factory _Shift.fromJson(Map<String, dynamic> json) => _$ShiftFromJson(json);

@override final  String id;
@override final  String userId;
@override final  ShiftStatus status;
 final  List<Stop> _stops;
@override@JsonKey() List<Stop> get stops {
  if (_stops is EqualUnmodifiableListView) return _stops;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stops);
}

 final  List<String>? _optimizedOrder;
@override List<String>? get optimizedOrder {
  final value = _optimizedOrder;
  if (value == null) return null;
  if (_optimizedOrder is EqualUnmodifiableListView) return _optimizedOrder;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<PriorityGroup>? _priorityGroups;
@override List<PriorityGroup>? get priorityGroups {
  final value = _priorityGroups;
  if (value == null) return null;
  if (_priorityGroups is EqualUnmodifiableListView) return _priorityGroups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime? startedAt;
@override final  DateTime? completedAt;

/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftCopyWith<_Shift> get copyWith => __$ShiftCopyWithImpl<_Shift>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShiftToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Shift&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._stops, _stops)&&const DeepCollectionEquality().equals(other._optimizedOrder, _optimizedOrder)&&const DeepCollectionEquality().equals(other._priorityGroups, _priorityGroups)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,status,const DeepCollectionEquality().hash(_stops),const DeepCollectionEquality().hash(_optimizedOrder),const DeepCollectionEquality().hash(_priorityGroups),startedAt,completedAt);

@override
String toString() {
  return 'Shift(id: $id, userId: $userId, status: $status, stops: $stops, optimizedOrder: $optimizedOrder, priorityGroups: $priorityGroups, startedAt: $startedAt, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$ShiftCopyWith<$Res> implements $ShiftCopyWith<$Res> {
  factory _$ShiftCopyWith(_Shift value, $Res Function(_Shift) _then) = __$ShiftCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, ShiftStatus status, List<Stop> stops, List<String>? optimizedOrder, List<PriorityGroup>? priorityGroups, DateTime? startedAt, DateTime? completedAt
});




}
/// @nodoc
class __$ShiftCopyWithImpl<$Res>
    implements _$ShiftCopyWith<$Res> {
  __$ShiftCopyWithImpl(this._self, this._then);

  final _Shift _self;
  final $Res Function(_Shift) _then;

/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? status = null,Object? stops = null,Object? optimizedOrder = freezed,Object? priorityGroups = freezed,Object? startedAt = freezed,Object? completedAt = freezed,}) {
  return _then(_Shift(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShiftStatus,stops: null == stops ? _self._stops : stops // ignore: cast_nullable_to_non_nullable
as List<Stop>,optimizedOrder: freezed == optimizedOrder ? _self._optimizedOrder : optimizedOrder // ignore: cast_nullable_to_non_nullable
as List<String>?,priorityGroups: freezed == priorityGroups ? _self._priorityGroups : priorityGroups // ignore: cast_nullable_to_non_nullable
as List<PriorityGroup>?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
