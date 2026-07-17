import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:soldnet/models/entities/conversation.dart';
import 'package:soldnet/services/api/client/dio_client.dart';

part 'request_conversations_get.g.dart';
part 'request_conversations_get.freezed.dart';

@riverpod
Future<ResponseConversationsGet> requestConversationsGet(Ref ref) async {
  final dio = ref.read(dioClientProvider);
  try {
    final Response response = await dio.get('/v1/conversations');
    return ResponseConversationsGet.fromJson(response.data);
  } on DioException catch (e) {
    return ResponseConversationsGet.fromJson(e.response?.data);
  }
}

@freezed
abstract class ResponseConversationsGet with _$ResponseConversationsGet {
  const factory ResponseConversationsGet({
    required String? message,
    required List<Conversation>? conversations,
  }) = _ResponseConversationsGet;

  factory ResponseConversationsGet.fromJson(Map<String, dynamic> json) =>
      _$ResponseConversationsGetFromJson(json);
}
