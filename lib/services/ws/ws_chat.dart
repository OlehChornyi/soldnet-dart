import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:soldnet/models/const/const_info.dart';
import 'package:soldnet/models/entities/message.dart';
import 'package:soldnet/stores/store_chat.dart';
import 'package:soldnet/stores/store_user.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'ws_chat.g.dart';

@Riverpod(keepAlive: true)
class WsChat extends _$WsChat {
  @override
  WebSocketChannel? build() => null;

  Future<void> startWsChat() async {
    // if (channel != null) return;
    final token = ref.read(storeUserProvider).token;

    state = WebSocketChannel.connect(
        Uri.parse('${ConstInfo.wsBaseUrl}/chat?token=$token'));

    await state?.ready;

    state?.stream.listen((data) {
      ref
          .read(storeChatProvider.notifier)
          .addMessageToConversation(Message.fromJson(jsonDecode(data)));
    });
  }

  void sendMessage(Message message) {
    state?.sink.add(jsonEncode({
      "id": message.id,
      "conversationId": message.conversationId,
      "senderId": message.senderId,
      "type": message.type.name,
      "message": message.message,
      "attachments": message.attachments.map((a) {
        return {
          "id": a.id,
          "messageId": a.messageId,
          "name": a.name,
          "url": a.url,
          "mimeType": a.mimeType,
          "size": a.size,
          "createdAt": a.createdAt,
        };
      }).toList(),
      "createdAt": message.createdAt
    }));
  }
}
