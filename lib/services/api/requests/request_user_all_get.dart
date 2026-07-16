import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/services/api/client/dio_client.dart';

part 'request_user_all_get.g.dart';
part 'request_user_all_get.freezed.dart';

@riverpod
Future<ResponseUserAllGet> requestUserAllGet(Ref ref) async {
  final dio = ref.read(dioClientProvider);
  try {
    final Response response = await dio.get('/v1/user/account');
    return ResponseUserAllGet.fromJson(response.data);
  } on DioException catch (e) {
    return ResponseUserAllGet.fromJson(e.response?.data);
  }
}

@freezed
abstract class ResponseUserAllGet with _$ResponseUserAllGet {
  const factory ResponseUserAllGet({
    required String? message,
    required List<User>? users,
  }) = _ResponseUserAllGet;

  factory ResponseUserAllGet.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserAllGetFromJson(json);
}
