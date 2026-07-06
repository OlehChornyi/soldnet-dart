// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_users_account_get.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseUsersAccountGet _$ResponseUsersAccountGetFromJson(
        Map<String, dynamic> json) =>
    _ResponseUsersAccountGet(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseUsersAccountGetToJson(
        _ResponseUsersAccountGet instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(requestUsersAccountGet)
final requestUsersAccountGetProvider = RequestUsersAccountGetProvider._();

final class RequestUsersAccountGetProvider extends $FunctionalProvider<
        AsyncValue<ResponseUsersAccountGet>,
        ResponseUsersAccountGet,
        FutureOr<ResponseUsersAccountGet>>
    with
        $FutureModifier<ResponseUsersAccountGet>,
        $FutureProvider<ResponseUsersAccountGet> {
  RequestUsersAccountGetProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'requestUsersAccountGetProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestUsersAccountGetHash();

  @$internal
  @override
  $FutureProviderElement<ResponseUsersAccountGet> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ResponseUsersAccountGet> create(Ref ref) {
    return requestUsersAccountGet(ref);
  }
}

String _$requestUsersAccountGetHash() =>
    r'eb7fe7bd771165001960b04a7d432a2c5fe1cd24';
