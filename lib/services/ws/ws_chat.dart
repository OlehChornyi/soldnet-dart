import 'dart:convert';

import 'package:soldnet/models/const/const_info.dart';
import 'package:soldnet/models/entities/message.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WsChat {
  static WebSocketChannel? channel;

  static Future<void> startWsChat() async {
    if (channel != null) return;

    channel =
        WebSocketChannel.connect(Uri.parse('${ConstInfo.wsBaseUrl}/chat'));

    await channel?.ready;

    channel?.stream.listen((event) => print(event));
  }

  static void sendMessage(Message message) {
    channel?.sink.add(jsonEncode({
      "id": message.id,
      "conversationId": message.conversationId,
      "sederId": message.sederId,
      "message": message.message,
      "createdAt": message.createdAt
    }));
  }
}
