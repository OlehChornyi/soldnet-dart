import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.g.dart';
part 'message.freezed.dart';

@freezed
abstract class Message with _$Message {
  const factory Message({
    required int id,
    required int conversationId,
    required int sederId,
    required String message,
    required String createdAt,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
