import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/services/api/client/dio_client.dart';

part 'request_user_account_get.g.dart';
part 'request_user_account_get.freezed.dart';

@riverpod
Future<ResponseUserAccountGet> requestUserAccountGet(Ref ref) async {
  final dio = ref.read(dioClientProvider);
  try {
    final Response response = await dio.get('/v1/user/account');
    return ResponseUserAccountGet.fromJson(response.data);
  } on DioException catch (e) {
    return ResponseUserAccountGet.fromJson(e.response?.data);
  }
}

@freezed
abstract class ResponseUserAccountGet with _$ResponseUserAccountGet {
  const factory ResponseUserAccountGet({
    required String? message,
    required User? user,
  }) = _ResponseUserAccountGet;

  factory ResponseUserAccountGet.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserAccountGetFromJson(json);
}
