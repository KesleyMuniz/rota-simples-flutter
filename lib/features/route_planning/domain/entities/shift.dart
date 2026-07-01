import 'package:freezed_annotation/freezed_annotation.dart';
import 'stop.dart';
import 'priority_group.dart';

part 'shift.freezed.dart';
part 'shift.g.dart';

enum ShiftStatus { planning, optimized, inProgress, completed }

@freezed
abstract class Shift with _$Shift {
  const factory Shift({
    required String id,
    required String userId,
    required ShiftStatus status,
    @Default(<Stop>[]) List<Stop> stops,
    List<String>? optimizedOrder,
    List<PriorityGroup>? priorityGroups,
    DateTime? startedAt,
    DateTime? completedAt,
  }) = _Shift;

  factory Shift.fromJson(Map<String, dynamic> json) => _$ShiftFromJson(json);
}
