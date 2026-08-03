// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_attachments_upload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseAttachmentUpload _$ResponseAttachmentUploadFromJson(
        Map<String, dynamic> json) =>
    _ResponseAttachmentUpload(
      attachment: json['attachment'] == null
          ? null
          : Attachment.fromJson(json['attachment'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ResponseAttachmentUploadToJson(
        _ResponseAttachmentUpload instance) =>
    <String, dynamic>{
      'attachment': instance.attachment,
      'message': instance.message,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(requestAttachmentsUpload)
final requestAttachmentsUploadProvider = RequestAttachmentsUploadFamily._();

final class RequestAttachmentsUploadProvider extends $FunctionalProvider<
        AsyncValue<ResponseAttachmentUpload>,
        ResponseAttachmentUpload,
        FutureOr<ResponseAttachmentUpload>>
    with
        $FutureModifier<ResponseAttachmentUpload>,
        $FutureProvider<ResponseAttachmentUpload> {
  RequestAttachmentsUploadProvider._(
      {required RequestAttachmentsUploadFamily super.from,
      required ({
        File file,
        String mimeType,
      })
          super.argument})
      : super(
          retry: null,
          name: r'requestAttachmentsUploadProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestAttachmentsUploadHash();

  @override
  String toString() {
    return r'requestAttachmentsUploadProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<ResponseAttachmentUpload> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ResponseAttachmentUpload> create(Ref ref) {
    final argument = this.argument as ({
      File file,
      String mimeType,
    });
    return requestAttachmentsUpload(
      ref,
      file: argument.file,
      mimeType: argument.mimeType,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RequestAttachmentsUploadProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$requestAttachmentsUploadHash() =>
    r'df02932bdfae5ceea039aa22a9c2d362b6fad210';

final class RequestAttachmentsUploadFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<ResponseAttachmentUpload>,
            ({
              File file,
              String mimeType,
            })> {
  RequestAttachmentsUploadFamily._()
      : super(
          retry: null,
          name: r'requestAttachmentsUploadProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  RequestAttachmentsUploadProvider call({
    required File file,
    required String mimeType,
  }) =>
      RequestAttachmentsUploadProvider._(argument: (
        file: file,
        mimeType: mimeType,
      ), from: this);

  @override
  String toString() => r'requestAttachmentsUploadProvider';
}
