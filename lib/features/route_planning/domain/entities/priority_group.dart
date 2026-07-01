import 'package:freezed_annotation/freezed_annotation.dart';

part 'priority_group.freezed.dart';
part 'priority_group.g.dart';

@freezed
abstract class PriorityGroup with _$PriorityGroup {
  const factory PriorityGroup({
    required String id,
    required List<String> stopIds,
    required int order,
  }) = _PriorityGroup;

  factory PriorityGroup.fromJson(Map<String, dynamic> json) => _$PriorityGroupFromJson(json);
}
