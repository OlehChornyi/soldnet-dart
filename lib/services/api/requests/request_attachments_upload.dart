import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:soldnet/models/entities/attachment.dart';
import 'package:soldnet/services/api/client/dio_client.dart';

part 'request_attachments_upload.g.dart';
part 'request_attachments_upload.freezed.dart';

@riverpod
Future<ResponseAttachmentUpload> requestAttachmentsUpload(
  Ref ref, {
  required File file,
  required String mimeType,
}) async {
  final dio = ref.read(dioClientProvider);

  dio.options.headers.addAll({'ContentType': mimeType});

  final body = FormData.fromMap({
    "photo": await MultipartFile.fromFile(
      file.path,
      filename: "profile.jpg",
    )
  });

  try {
    final Response response =
        await dio.post('/v1/attachments/upload', data: body);
    return ResponseAttachmentUpload.fromJson(response.data);
  } on DioException catch (e) {
    return ResponseAttachmentUpload.fromJson(e.response?.data);
  }
}

@freezed
abstract class ResponseAttachmentUpload with _$ResponseAttachmentUpload {
  const factory ResponseAttachmentUpload(
      {required Attachment? attachment,
      required String? message}) = _ResponseAttachmentUpload;

  factory ResponseAttachmentUpload.fromJson(Map<String, dynamic> json) =>
      _$ResponseAttachmentUploadFromJson(json);
}
