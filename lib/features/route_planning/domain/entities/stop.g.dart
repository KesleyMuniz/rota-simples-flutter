// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Stop _$StopFromJson(Map<String, dynamic> json) => _Stop(
  id: json['id'] as String,
  address: json['address'] as String,
  streetNumber: json['streetNumber'] as String?,
  neighborhood: json['neighborhood'] as String?,
  city: json['city'] as String?,
  zipCode: json['zipCode'] as String?,
  coordinates: Coordinates.fromJson(
    json['coordinates'] as Map<String, dynamic>,
  ),
  orderNumber: json['orderNumber'] as String?,
  note: json['note'] as String?,
  status: $enumDecode(_$StopStatusEnumMap, json['status']),
  geocodingConfidence: $enumDecode(
    _$GeocodingConfidenceEnumMap,
    json['geocodingConfidence'],
  ),
  hasGroupingConflict: json['hasGroupingConflict'] as bool,
  incorrectAddressReports:
      (json['incorrectAddressReports'] as List<dynamic>?)
          ?.map(
            (e) => IncorrectAddressReport.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <IncorrectAddressReport>[],
  boxes: (json['boxes'] as List<dynamic>)
      .map((e) => Box.fromJson(e as Map<String, dynamic>))
      .toList(),
  priorityGroupId: json['priorityGroupId'] as String?,
);

Map<String, dynamic> _$StopToJson(_Stop instance) => <String, dynamic>{
  'id': instance.id,
  'address': instance.address,
  'streetNumber': instance.streetNumber,
  'neighborhood': instance.neighborhood,
  'city': instance.city,
  'zipCode': instance.zipCode,
  'coordinates': instance.coordinates,
  'orderNumber': instance.orderNumber,
  'note': instance.note,
  'status': _$StopStatusEnumMap[instance.status]!,
  'geocodingConfidence':
      _$GeocodingConfidenceEnumMap[instance.geocodingConfidence]!,
  'hasGroupingConflict': instance.hasGroupingConflict,
  'incorrectAddressReports': instance.incorrectAddressReports,
  'boxes': instance.boxes,
  'priorityGroupId': instance.priorityGroupId,
};

const _$StopStatusEnumMap = {
  StopStatus.pending: 'pending',
  StopStatus.delivered: 'delivered',
};

const _$GeocodingConfidenceEnumMap = {
  GeocodingConfidence.high: 'high',
  GeocodingConfidence.low: 'low',
};
