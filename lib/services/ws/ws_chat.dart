import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/models/const/const_info.dart';
import 'package:soldnet/models/entities/message.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WsChat {
  static WebSocketChannel? channel;

  static Future<void> startWsChat(WidgetRef ref) async {
    // if (channel != null) return;

    channel =
        WebSocketChannel.connect(Uri.parse('${ConstInfo.wsBaseUrl}/chat'));

    await channel?.ready;
    channel?.stream.listen((data) {
      //TODO: implemet message handling
    });
  }

  static void sendMessage(Message message) {
    channel?.sink.add(jsonEncode({
      "id": message.id,
      "conversationId": message.conversationId,
      "sederId": message.senderId,
      "message": message.message,
      "createdAt": message.createdAt
    }));
  }
}
