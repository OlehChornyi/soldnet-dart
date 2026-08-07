import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:soldnet/models/entities/conversation.dart';
import 'package:soldnet/services/api/client/dio_client.dart';

part 'request_conversations_update.g.dart';
part 'request_conversations_update.freezed.dart';

@riverpod
Future<ResponseConversationsUpdate> requestConversationsUpdate(Ref ref,
    {required Conversation body}) async {
  final dio = ref.read(dioClientProvider);

  try {
    final Response response =
        await dio.put('/v1/conversations/update', data: body);
    return ResponseConversationsUpdate.fromJson(response.data);
  } on DioException catch (e) {
    return ResponseConversationsUpdate.fromJson(e.response?.data);
  }
}

@freezed
abstract class ResponseConversationsUpdate with _$ResponseConversationsUpdate {
  const factory ResponseConversationsUpdate({
    required String message,
  }) = _ResponseConversationsUpdate;

  factory ResponseConversationsUpdate.fromJson(Map<String, dynamic> json) =>
      _$ResponseConversationsUpdateFromJson(json);
}
