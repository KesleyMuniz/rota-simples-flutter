// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Box _$BoxFromJson(Map<String, dynamic> json) => _Box(
  id: json['id'] as String,
  trackingNumber: json['trackingNumber'] as String,
  recipientName: json['recipientName'] as String?,
);

Map<String, dynamic> _$BoxToJson(_Box instance) => <String, dynamic>{
  'id': instance.id,
  'trackingNumber': instance.trackingNumber,
  'recipientName': instance.recipientName,
};
