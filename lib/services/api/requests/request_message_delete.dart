import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:soldnet/models/entities/message.dart';
import 'package:soldnet/services/api/client/dio_client.dart';

part 'request_message_delete.g.dart';
part 'request_message_delete.freezed.dart';

@riverpod
Future<ResponseMessageDelete> requestMessageDelete(Ref ref,
    {required Message body}) async {
  final dio = ref.read(dioClientProvider);

  try {
    final Response response =
        await dio.delete('/v1/message/delete', data: body);
    return ResponseMessageDelete.fromJson(response.data);
  } on DioException catch (e) {
    return ResponseMessageDelete.fromJson(e.response?.data);
  }
}

@freezed
abstract class ResponseMessageDelete with _$ResponseMessageDelete {
  const factory ResponseMessageDelete({
    required String message,
  }) = _ResponseMessageDelete;

  factory ResponseMessageDelete.fromJson(Map<String, dynamic> json) =>
      _$ResponseMessageDeleteFromJson(json);
}
