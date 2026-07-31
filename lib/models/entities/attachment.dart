import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachment.g.dart';
part 'attachment.freezed.dart';

@freezed
abstract class Attachment with _$Attachment {
  const factory Attachment({
    required String id,
    required String messageId,
    required String name,
    required String url,
    required String mimeType,
    required int size,
    required String createdAt,
  }) = _Attachment;

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);
}
