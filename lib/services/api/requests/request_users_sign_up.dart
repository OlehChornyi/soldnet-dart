import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:soldnet/services/api/client/dio_client.dart';

part 'request_users_sign_up.g.dart';
part 'request_users_sign_up.freezed.dart';

@riverpod
Future<ResponseSignUp> requestSignUp(
  Ref ref, {
  required BodySignUp body,
}) async {
  final dio = ref.read(dioClientProvider);
  try {
    final Response response = await dio.post('/users/signup', data: body);
    return ResponseSignUp.fromJson(response.data);
  } on DioException catch (e) {
    return ResponseSignUp.fromJson(e.response?.data);
  }
}

@freezed
abstract class BodySignUp with _$BodySignUp {
  const factory BodySignUp({required String email, required String password}) =
      _BodySignUp;

  factory BodySignUp.fromJson(Map<String, dynamic> json) =>
      _$BodySignUpFromJson(json);
}

@freezed
abstract class ResponseSignUp with _$ResponseSignUp {
  const factory ResponseSignUp({required String message}) = _ResponseSignUp;

  factory ResponseSignUp.fromJson(Map<String, dynamic> json) =>
      _$ResponseSignUpFromJson(json);
}
