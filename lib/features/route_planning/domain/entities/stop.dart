import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/utils/coordinates.dart';
import 'box.dart';
import 'incorrect_address_report.dart';

part 'stop.freezed.dart';
part 'stop.g.dart';

enum StopStatus { pending, delivered }

enum GeocodingConfidence { high, low }

@freezed
abstract class Stop with _$Stop {
  const factory Stop({
    required String id,
    required String address,
    String? streetNumber,
    String? neighborhood,
    String? city,
    String? zipCode,
    required Coordinates coordinates,
    String? orderNumber,
    String? note,
    required StopStatus status,
    required GeocodingConfidence geocodingConfidence,
    required bool hasGroupingConflict,
    @Default(<IncorrectAddressReport>[]) List<IncorrectAddressReport> incorrectAddressReports,
    required List<Box> boxes,
    String? priorityGroupId,
  }) = _Stop;

  factory Stop.fromJson(Map<String, dynamic> json) => _$StopFromJson(json);
}
