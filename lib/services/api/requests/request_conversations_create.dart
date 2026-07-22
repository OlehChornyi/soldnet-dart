import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:soldnet/models/entities/conversation.dart';
import 'package:soldnet/services/api/client/dio_client.dart';

part 'request_conversations_create.g.dart';
part 'request_conversations_create.freezed.dart';

@riverpod
Future<ResponseConversationsCreate> requestConversationsCreate(
  Ref ref, {
  required BodyConversationsCreate body,
}) async {
  final dio = ref.read(dioClientProvider);
  try {
    final Response response =
        await dio.post('/v1/conversations/create', data: body);
    return ResponseConversationsCreate.fromJson(response.data);
  } on DioException catch (e) {
    return ResponseConversationsCreate.fromJson(e.response?.data);
  }
}

@freezed
abstract class BodyConversationsCreate with _$BodyConversationsCreate {
  const factory BodyConversationsCreate(
      {required String title,
      required List<String> members}) = _BodyConversationsCreate;

  factory BodyConversationsCreate.fromJson(Map<String, dynamic> json) =>
      _$BodyConversationsCreateFromJson(json);
}

@freezed
abstract class ResponseConversationsCreate with _$ResponseConversationsCreate {
  const factory ResponseConversationsCreate({
    required String? message,
    required Conversation? conversation,
  }) = _ResponseConversationsCreate;

  factory ResponseConversationsCreate.fromJson(Map<String, dynamic> json) =>
      _$ResponseConversationsCreateFromJson(json);
}
