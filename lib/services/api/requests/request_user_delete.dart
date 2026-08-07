import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/services/api/client/dio_client.dart';

part 'request_user_delete.g.dart';
part 'request_user_delete.freezed.dart';

@riverpod
Future<ResponseUserDelete> requestUserDelete(Ref ref,
    {required User body}) async {
  final dio = ref.read(dioClientProvider);

  try {
    final Response response = await dio.put('/v1/user/delete', data: body);
    return ResponseUserDelete.fromJson(response.data);
  } on DioException catch (e) {
    return ResponseUserDelete.fromJson(e.response?.data);
  }
}

@freezed
abstract class ResponseUserDelete with _$ResponseUserDelete {
  const factory ResponseUserDelete({
    required String message,
  }) = _ResponseUserDelete;

  factory ResponseUserDelete.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserDeleteFromJson(json);
}
