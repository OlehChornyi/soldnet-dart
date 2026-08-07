import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/services/api/client/dio_client.dart';

part 'request_user_update.g.dart';
part 'request_user_update.freezed.dart';

@riverpod
Future<ResponseUserUpdate> requestUserUpdate(Ref ref,
    {required User body}) async {
  final dio = ref.read(dioClientProvider);

  try {
    final Response response = await dio.put('/v1/user/update', data: body);
    return ResponseUserUpdate.fromJson(response.data);
  } on DioException catch (e) {
    return ResponseUserUpdate.fromJson(e.response?.data);
  }
}

@freezed
abstract class ResponseUserUpdate with _$ResponseUserUpdate {
  const factory ResponseUserUpdate({
    required String message,
  }) = _ResponseUserUpdate;

  factory ResponseUserUpdate.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserUpdateFromJson(json);
}
