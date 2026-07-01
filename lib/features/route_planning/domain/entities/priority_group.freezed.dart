// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'priority_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriorityGroup {

 String get id; List<String> get stopIds; int get order;
/// Create a copy of PriorityGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriorityGroupCopyWith<PriorityGroup> get copyWith => _$PriorityGroupCopyWithImpl<PriorityGroup>(this as PriorityGroup, _$identity);

  /// Serializes this PriorityGroup to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriorityGroup&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.stopIds, stopIds)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(stopIds),order);

@override
String toString() {
  return 'PriorityGroup(id: $id, stopIds: $stopIds, order: $order)';
}


}

/// @nodoc
abstract mixin class $PriorityGroupCopyWith<$Res>  {
  factory $PriorityGroupCopyWith(PriorityGroup value, $Res Function(PriorityGroup) _then) = _$PriorityGroupCopyWithImpl;
@useResult
$Res call({
 String id, List<String> stopIds, int order
});




}
/// @nodoc
class _$PriorityGroupCopyWithImpl<$Res>
    implements $PriorityGroupCopyWith<$Res> {
  _$PriorityGroupCopyWithImpl(this._self, this._then);

  final PriorityGroup _self;
  final $Res Function(PriorityGroup) _then;

/// Create a copy of PriorityGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? stopIds = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,stopIds: null == stopIds ? _self.stopIds : stopIds // ignore: cast_nullable_to_non_nullable
as List<String>,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PriorityGroup].
extension PriorityGroupPatterns on PriorityGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriorityGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriorityGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriorityGroup value)  $default,){
final _that = this;
switch (_that) {
case _PriorityGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriorityGroup value)?  $default,){
final _that = this;
switch (_that) {
case _PriorityGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<String> stopIds,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriorityGroup() when $default != null:
return $default(_that.id,_that.stopIds,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<String> stopIds,  int order)  $default,) {final _that = this;
switch (_that) {
case _PriorityGroup():
return $default(_that.id,_that.stopIds,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<String> stopIds,  int order)?  $default,) {final _that = this;
switch (_that) {
case _PriorityGroup() when $default != null:
return $default(_that.id,_that.stopIds,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriorityGroup implements PriorityGroup {
  const _PriorityGroup({required this.id, required final  List<String> stopIds, required this.order}): _stopIds = stopIds;
  factory _PriorityGroup.fromJson(Map<String, dynamic> json) => _$PriorityGroupFromJson(json);

@override final  String id;
 final  List<String> _stopIds;
@override List<String> get stopIds {
  if (_stopIds is EqualUnmodifiableListView) return _stopIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stopIds);
}

@override final  int order;

/// Create a copy of PriorityGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriorityGroupCopyWith<_PriorityGroup> get copyWith => __$PriorityGroupCopyWithImpl<_PriorityGroup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriorityGroupToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriorityGroup&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._stopIds, _stopIds)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_stopIds),order);

@override
String toString() {
  return 'PriorityGroup(id: $id, stopIds: $stopIds, order: $order)';
}


}

/// @nodoc
abstract mixin class _$PriorityGroupCopyWith<$Res> implements $PriorityGroupCopyWith<$Res> {
  factory _$PriorityGroupCopyWith(_PriorityGroup value, $Res Function(_PriorityGroup) _then) = __$PriorityGroupCopyWithImpl;
@override @useResult
$Res call({
 String id, List<String> stopIds, int order
});




}
/// @nodoc
class __$PriorityGroupCopyWithImpl<$Res>
    implements _$PriorityGroupCopyWith<$Res> {
  __$PriorityGroupCopyWithImpl(this._self, this._then);

  final _PriorityGroup _self;
  final $Res Function(_PriorityGroup) _then;

/// Create a copy of PriorityGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? stopIds = null,Object? order = null,}) {
  return _then(_PriorityGroup(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,stopIds: null == stopIds ? _self._stopIds : stopIds // ignore: cast_nullable_to_non_nullable
as List<String>,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
