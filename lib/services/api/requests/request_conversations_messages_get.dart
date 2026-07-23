import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:soldnet/models/entities/message.dart';
import 'package:soldnet/services/api/client/dio_client.dart';

part 'request_conversations_messages_get.g.dart';
part 'request_conversations_messages_get.freezed.dart';

@riverpod
Future<ResponseConversationsMessagesGet> requestConversationsGet(Ref ref,
    {required String conversationId}) async {
  final dio = ref.read(dioClientProvider);
  try {
    final Response response =
        await dio.get('/v1/conversations/$conversationId/messages');
    return ResponseConversationsMessagesGet.fromJson(response.data);
  } on DioException catch (e) {
    return ResponseConversationsMessagesGet.fromJson(e.response?.data);
  }
}

@freezed
abstract class ResponseConversationsMessagesGet
    with _$ResponseConversationsMessagesGet {
  const factory ResponseConversationsMessagesGet({
    required String? message,
    required List<Message>? messages,
  }) = _ResponseConversationsMessagesGet;

  factory ResponseConversationsMessagesGet.fromJson(
          Map<String, dynamic> json) =>
      _$ResponseConversationsMessagesGetFromJson(json);
}
