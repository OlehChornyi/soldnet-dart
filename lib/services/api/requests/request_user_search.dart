import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/services/api/client/dio_client.dart';

part 'request_user_search.g.dart';
part 'request_user_search.freezed.dart';

@riverpod
Future<ResponseUserSearch> requestUserSearch(Ref ref,
    {required String query}) async {
  final dio = ref.read(dioClientProvider);

  try {
    final Response response = await dio.get('/v1/user/search$query');
    return ResponseUserSearch.fromJson(response.data);
  } on DioException catch (e) {
    return ResponseUserSearch.fromJson(e.response?.data);
  }
}

@freezed
abstract class ResponseUserSearch with _$ResponseUserSearch {
  const factory ResponseUserSearch({
    required String? message,
    required List<User>? users,
  }) = _ResponseUserSearch;

  factory ResponseUserSearch.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserSearchFromJson(json);
}
