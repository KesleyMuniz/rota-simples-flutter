// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) => _Coordinates(
  lat: (json['lat'] as num).toDouble(),
  lng: (json['lng'] as num).toDouble(),
);

Map<String, dynamic> _$CoordinatesToJson(_Coordinates instance) =>
    <String, dynamic>{'lat': instance.lat, 'lng': instance.lng};
