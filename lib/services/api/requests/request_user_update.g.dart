// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_user_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseUserUpdate _$ResponseUserUpdateFromJson(Map<String, dynamic> json) =>
    _ResponseUserUpdate(
      message: json['message'] as String,
    );

Map<String, dynamic> _$ResponseUserUpdateToJson(_ResponseUserUpdate instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(requestUserUpdate)
final requestUserUpdateProvider = RequestUserUpdateFamily._();

final class RequestUserUpdateProvider extends $FunctionalProvider<
        AsyncValue<ResponseUserUpdate>,
        ResponseUserUpdate,
        FutureOr<ResponseUserUpdate>>
    with
        $FutureModifier<ResponseUserUpdate>,
        $FutureProvider<ResponseUserUpdate> {
  RequestUserUpdateProvider._(
      {required RequestUserUpdateFamily super.from,
      required User super.argument})
      : super(
          retry: null,
          name: r'requestUserUpdateProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestUserUpdateHash();

  @override
  String toString() {
    return r'requestUserUpdateProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ResponseUserUpdate> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ResponseUserUpdate> create(Ref ref) {
    final argument = this.argument as User;
    return requestUserUpdate(
      ref,
      body: argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RequestUserUpdateProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$requestUserUpdateHash() => r'341956c3a08a3050d9edd44726a13997b71410f0';

final class RequestUserUpdateFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ResponseUserUpdate>, User> {
  RequestUserUpdateFamily._()
      : super(
          retry: null,
          name: r'requestUserUpdateProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  RequestUserUpdateProvider call({
    required User body,
  }) =>
      RequestUserUpdateProvider._(argument: body, from: this);

  @override
  String toString() => r'requestUserUpdateProvider';
}
