import 'package:freezed_annotation/freezed_annotation.dart';

part 'coordinates.freezed.dart';
part 'coordinates.g.dart';

@freezed
abstract class Coordinates with _$Coordinates {
  const factory Coordinates({
    required double lat,
    required double lng,
  }) = _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) => _$CoordinatesFromJson(json);
}
