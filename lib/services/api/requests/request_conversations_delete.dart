import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:soldnet/models/entities/conversation.dart';
import 'package:soldnet/services/api/client/dio_client.dart';

part 'request_conversations_delete.g.dart';
part 'request_conversations_delete.freezed.dart';

@riverpod
Future<ResponseConversationsDelete> requestConversationsDelete(Ref ref,
    {required Conversation body}) async {
  final dio = ref.read(dioClientProvider);

  try {
    final Response response =
        await dio.delete('/v1/conversations/delete', data: body);
    return ResponseConversationsDelete.fromJson(response.data);
  } on DioException catch (e) {
    return ResponseConversationsDelete.fromJson(e.response?.data);
  }
}

@freezed
abstract class ResponseConversationsDelete with _$ResponseConversationsDelete {
  const factory ResponseConversationsDelete({
    required String message,
  }) = _ResponseConversationsDelete;

  factory ResponseConversationsDelete.fromJson(Map<String, dynamic> json) =>
      _$ResponseConversationsDeleteFromJson(json);
}
