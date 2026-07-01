// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'priority_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriorityGroup _$PriorityGroupFromJson(Map<String, dynamic> json) =>
    _PriorityGroup(
      id: json['id'] as String,
      stopIds: (json['stopIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      order: (json['order'] as num).toInt(),
    );

Map<String, dynamic> _$PriorityGroupToJson(_PriorityGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stopIds': instance.stopIds,
      'order': instance.order,
    };
