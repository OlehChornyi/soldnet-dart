import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:soldnet/services/api/client/dio_client.dart';

part 'request_users_sign_in.g.dart';
part 'request_users_sign_in.freezed.dart';

@riverpod
Future<ResponseSignIn> requestSignIn(
  Ref ref, {
  required BodySignIn body,
}) async {
  final dio = ref.read(dioClientProvider);
  try {
    final Response response = await dio.post('/users/signin', data: body);
    return ResponseSignIn.fromJson(response.data);
  } on DioException catch (e) {
    return ResponseSignIn.fromJson(e.response?.data);
  }
}

@freezed
abstract class BodySignIn with _$BodySignIn {
  const factory BodySignIn({required String email, required String password}) =
      _BodySignIn;

  factory BodySignIn.fromJson(Map<String, dynamic> json) =>
      _$BodySignInFromJson(json);
}

@freezed
abstract class ResponseSignIn with _$ResponseSignIn {
  const factory ResponseSignIn({
    required String? message,
    required String? token,
  }) = _ResponseSignIn;

  factory ResponseSignIn.fromJson(Map<String, dynamic> json) =>
      _$ResponseSignInFromJson(json);
}
