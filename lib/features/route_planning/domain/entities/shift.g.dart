// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Shift _$ShiftFromJson(Map<String, dynamic> json) => _Shift(
  id: json['id'] as String,
  userId: json['userId'] as String,
  status: $enumDecode(_$ShiftStatusEnumMap, json['status']),
  stops:
      (json['stops'] as List<dynamic>?)
          ?.map((e) => Stop.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <Stop>[],
  optimizedOrder: (json['optimizedOrder'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  priorityGroups: (json['priorityGroups'] as List<dynamic>?)
      ?.map((e) => PriorityGroup.fromJson(e as Map<String, dynamic>))
      .toList(),
  startedAt: json['startedAt'] == null
      ? null
      : DateTime.parse(json['startedAt'] as String),
  completedAt: json['completedAt'] == null
      ? null
      : DateTime.parse(json['completedAt'] as String),
);

Map<String, dynamic> _$ShiftToJson(_Shift instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'status': _$ShiftStatusEnumMap[instance.status]!,
  'stops': instance.stops,
  'optimizedOrder': instance.optimizedOrder,
  'priorityGroups': instance.priorityGroups,
  'startedAt': instance.startedAt?.toIso8601String(),
  'completedAt': instance.completedAt?.toIso8601String(),
};

const _$ShiftStatusEnumMap = {
  ShiftStatus.planning: 'planning',
  ShiftStatus.optimized: 'optimized',
  ShiftStatus.inProgress: 'inProgress',
  ShiftStatus.completed: 'completed',
};
