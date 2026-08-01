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

@ProviderFor(requestUsetPhotoPost)
final requestUsetPhotoPostProvider = RequestUsetPhotoPostFamily._();

final class RequestUsetPhotoPostProvider extends $FunctionalProvider<
        AsyncValue<ResponseAttachmentUpload>,
        ResponseAttachmentUpload,
        FutureOr<ResponseAttachmentUpload>>
    with
        $FutureModifier<ResponseAttachmentUpload>,
        $FutureProvider<ResponseAttachmentUpload> {
  RequestUsetPhotoPostProvider._(
      {required RequestUsetPhotoPostFamily super.from,
      required ({
        File file,
        String mimeType,
      })
          super.argument})
      : super(
          retry: null,
          name: r'requestUsetPhotoPostProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestUsetPhotoPostHash();

  @override
  String toString() {
    return r'requestUsetPhotoPostProvider'
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
    return requestUsetPhotoPost(
      ref,
      file: argument.file,
      mimeType: argument.mimeType,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RequestUsetPhotoPostProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$requestUsetPhotoPostHash() =>
    r'a90ccd5ab9ecc4195bb6ba72a69d55e686603867';

final class RequestUsetPhotoPostFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<ResponseAttachmentUpload>,
            ({
              File file,
              String mimeType,
            })> {
  RequestUsetPhotoPostFamily._()
      : super(
          retry: null,
          name: r'requestUsetPhotoPostProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  RequestUsetPhotoPostProvider call({
    required File file,
    required String mimeType,
  }) =>
      RequestUsetPhotoPostProvider._(argument: (
        file: file,
        mimeType: mimeType,
      ), from: this);

  @override
  String toString() => r'requestUsetPhotoPostProvider';
}
