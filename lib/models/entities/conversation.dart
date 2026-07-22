import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation.g.dart';
part 'conversation.freezed.dart';

@freezed
abstract class Conversation with _$Conversation {
  const factory Conversation({
    required String id,
    required String userId,
    required bool isGroup,
    required String title,
    required List<String> members,
    required String createdAt,
  }) = _Conversation;

  factory Conversation.fromJson(Map<String, dynamic> json) =>
      _$ConversationFromJson(json);
}
