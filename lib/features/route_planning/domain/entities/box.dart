import 'package:freezed_annotation/freezed_annotation.dart';

part 'box.freezed.dart';
part 'box.g.dart';

@freezed
abstract class Box with _$Box {
  const factory Box({
    required String id,
    required String trackingNumber,
    String? recipientName,
  }) = _Box;

  factory Box.fromJson(Map<String, dynamic> json) => _$BoxFromJson(json);
}
