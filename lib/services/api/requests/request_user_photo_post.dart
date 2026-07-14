import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:soldnet/services/api/client/dio_client.dart';

part 'request_user_photo_post.g.dart';
part 'request_user_photo_post.freezed.dart';

@riverpod
Future<ResponseUserPhotoPost> requestUsetPhotoPost(
  Ref ref, {
  required File file,
}) async {
  final dio = ref.read(dioClientProvider);

  final body = FormData.fromMap({
    "photo": await MultipartFile.fromFile(
      file.path,
      filename: "profile.jpg",
    )
  });

  try {
    final Response response = await dio.post('/v1/user/photo', data: body);
    return ResponseUserPhotoPost.fromJson(response.data);
  } on DioException catch (e) {
    return ResponseUserPhotoPost.fromJson(e.response?.data);
  }
}

@freezed
abstract class ResponseUserPhotoPost with _$ResponseUserPhotoPost {
  const factory ResponseUserPhotoPost(
      {required String? imageUrl,
      required String? message}) = _ResponseUserPhotoPost;

  factory ResponseUserPhotoPost.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserPhotoPostFromJson(json);
}
