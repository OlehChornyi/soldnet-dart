import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/services/api/client/dio_client.dart';

part 'request_users_account_get.g.dart';
part 'request_users_account_get.freezed.dart';

@riverpod
Future<ResponseUsersAccountGet> requestUsersAccountGet(Ref ref) async {
  final dio = ref.read(dioClientProvider);
  try {
    final Response response = await dio.get('/users/account');
    return ResponseUsersAccountGet.fromJson(response.data);
  } on DioException catch (e) {
    return ResponseUsersAccountGet.fromJson(e.response?.data);
  }
}

@freezed
abstract class ResponseUsersAccountGet with _$ResponseUsersAccountGet {
  const factory ResponseUsersAccountGet({
    required String? message,
    required User? user,
  }) = _ResponseUsersAccountGet;

  factory ResponseUsersAccountGet.fromJson(Map<String, dynamic> json) =>
      _$ResponseUsersAccountGetFromJson(json);
}
