// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_user_account_get.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseUserAccountGet _$ResponseUserAccountGetFromJson(
        Map<String, dynamic> json) =>
    _ResponseUserAccountGet(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseUserAccountGetToJson(
        _ResponseUserAccountGet instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(requestUserAccountGet)
final requestUserAccountGetProvider = RequestUserAccountGetProvider._();

final class RequestUserAccountGetProvider extends $FunctionalProvider<
        AsyncValue<ResponseUserAccountGet>,
        ResponseUserAccountGet,
        FutureOr<ResponseUserAccountGet>>
    with
        $FutureModifier<ResponseUserAccountGet>,
        $FutureProvider<ResponseUserAccountGet> {
  RequestUserAccountGetProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'requestUserAccountGetProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestUserAccountGetHash();

  @$internal
  @override
  $FutureProviderElement<ResponseUserAccountGet> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ResponseUserAccountGet> create(Ref ref) {
    return requestUserAccountGet(ref);
  }
}

String _$requestUserAccountGetHash() =>
    r'5b437d7ef64efeddebb2b0dd4ec45d5f961e3fc4';
