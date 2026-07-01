import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/utils/coordinates.dart';

part 'incorrect_address_report.freezed.dart';
part 'incorrect_address_report.g.dart';

@freezed
abstract class IncorrectAddressReport with _$IncorrectAddressReport {
  const factory IncorrectAddressReport({
    String? note,
    required DateTime timestamp,
    required String reportedAddress,
    String? reportedNeighborhood,
    String? reportedCity,
    String? reportedZipCode,
    required Coordinates reportedCoordinates,
  }) = _IncorrectAddressReport;

  factory IncorrectAddressReport.fromJson(Map<String, dynamic> json) =>
      _$IncorrectAddressReportFromJson(json);
}
