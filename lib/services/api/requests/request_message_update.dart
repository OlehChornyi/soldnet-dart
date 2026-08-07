import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/services/api/client/dio_client.dart';

part 'request_message_update.g.dart';
part 'request_message_update.freezed.dart';

@riverpod
Future<ResponseMessageUpdate> requestMessageUpdate(Ref ref,
    {required User body}) async {
  final dio = ref.read(dioClientProvider);

  try {
    final Response response = await dio.put('/v1/message/update', data: body);
    return ResponseMessageUpdate.fromJson(response.data);
  } on DioException catch (e) {
    return ResponseMessageUpdate.fromJson(e.response?.data);
  }
}

@freezed
abstract class ResponseMessageUpdate with _$ResponseMessageUpdate {
  const factory ResponseMessageUpdate({
    required String message,
  }) = _ResponseMessageUpdate;

  factory ResponseMessageUpdate.fromJson(Map<String, dynamic> json) =>
      _$ResponseMessageUpdateFromJson(json);
}
