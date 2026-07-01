// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incorrect_address_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IncorrectAddressReport _$IncorrectAddressReportFromJson(
  Map<String, dynamic> json,
) => _IncorrectAddressReport(
  note: json['note'] as String?,
  timestamp: DateTime.parse(json['timestamp'] as String),
  reportedAddress: json['reportedAddress'] as String,
  reportedNeighborhood: json['reportedNeighborhood'] as String?,
  reportedCity: json['reportedCity'] as String?,
  reportedZipCode: json['reportedZipCode'] as String?,
  reportedCoordinates: Coordinates.fromJson(
    json['reportedCoordinates'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$IncorrectAddressReportToJson(
  _IncorrectAddressReport instance,
) => <String, dynamic>{
  'note': instance.note,
  'timestamp': instance.timestamp.toIso8601String(),
  'reportedAddress': instance.reportedAddress,
  'reportedNeighborhood': instance.reportedNeighborhood,
  'reportedCity': instance.reportedCity,
  'reportedZipCode': instance.reportedZipCode,
  'reportedCoordinates': instance.reportedCoordinates,
};
