import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soldnet/models/entities/attachment.dart';
import 'package:soldnet/models/utils/message_type.dart';

part 'message.g.dart';
part 'message.freezed.dart';

@freezed
abstract class Message with _$Message {
  const factory Message({
    required String id,
    required String conversationId,
    required String senderId,
    required MessageType type,
    required String message,
    required List<Attachment> attachments,
    required String createdAt,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
