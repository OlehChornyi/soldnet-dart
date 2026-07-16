// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_user_all_get.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseUserAllGet _$ResponseUserAllGetFromJson(Map<String, dynamic> json) =>
    _ResponseUserAllGet(
      message: json['message'] as String?,
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseUserAllGetToJson(_ResponseUserAllGet instance) =>
    <String, dynamic>{
      'message': instance.message,
      'users': instance.users,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(requestUserAllGet)
final requestUserAllGetProvider = RequestUserAllGetProvider._();

final class RequestUserAllGetProvider extends $FunctionalProvider<
        AsyncValue<ResponseUserAllGet>,
        ResponseUserAllGet,
        FutureOr<ResponseUserAllGet>>
    with
        $FutureModifier<ResponseUserAllGet>,
        $FutureProvider<ResponseUserAllGet> {
  RequestUserAllGetProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'requestUserAllGetProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestUserAllGetHash();

  @$internal
  @override
  $FutureProviderElement<ResponseUserAllGet> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ResponseUserAllGet> create(Ref ref) {
    return requestUserAllGet(ref);
  }
}

String _$requestUserAllGetHash() => r'59fd0d6102ac19afd07694d27d2abfdd34968e83';
