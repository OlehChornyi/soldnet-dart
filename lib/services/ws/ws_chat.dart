import 'dart:convert';

import 'package:soldnet/models/const/const_info.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WsChat {
  static WebSocketChannel? channel;

  static Future<void> startWsChat() async {
    if (channel != null) return;

    channel =
        WebSocketChannel.connect(Uri.parse('${ConstInfo.wsBaseUrl}/chat'));

    await channel?.ready;

    channel?.stream.listen((event) => print(event));

    channel?.sink.add(jsonEncode(
        {"conversationId": 1, "receiverId": 5, "message": "Hello!"}));
  }

  static void sendMessage(String message) {
    channel?.sink.add(
        jsonEncode({"conversationId": 1, "receiverId": 5, "message": message}));
  }
}
