// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_user_photo_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseUserPhotoPost _$ResponseUserPhotoPostFromJson(
        Map<String, dynamic> json) =>
    _ResponseUserPhotoPost(
      imageUrl: json['imageUrl'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ResponseUserPhotoPostToJson(
        _ResponseUserPhotoPost instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
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
        AsyncValue<ResponseUserPhotoPost>,
        ResponseUserPhotoPost,
        FutureOr<ResponseUserPhotoPost>>
    with
        $FutureModifier<ResponseUserPhotoPost>,
        $FutureProvider<ResponseUserPhotoPost> {
  RequestUsetPhotoPostProvider._(
      {required RequestUsetPhotoPostFamily super.from,
      required File super.argument})
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
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ResponseUserPhotoPost> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ResponseUserPhotoPost> create(Ref ref) {
    final argument = this.argument as File;
    return requestUsetPhotoPost(
      ref,
      file: argument,
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
    r'84c7b406ea033780fb80ca1c283315b698f638bc';

final class RequestUsetPhotoPostFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ResponseUserPhotoPost>, File> {
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
  }) =>
      RequestUsetPhotoPostProvider._(argument: file, from: this);

  @override
  String toString() => r'requestUsetPhotoPostProvider';
}
