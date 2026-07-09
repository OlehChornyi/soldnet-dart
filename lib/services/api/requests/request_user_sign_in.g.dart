// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_user_sign_in.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BodySignIn _$BodySignInFromJson(Map<String, dynamic> json) => _BodySignIn(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$BodySignInToJson(_BodySignIn instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_ResponseSignIn _$ResponseSignInFromJson(Map<String, dynamic> json) =>
    _ResponseSignIn(
      message: json['message'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$ResponseSignInToJson(_ResponseSignIn instance) =>
    <String, dynamic>{
      'message': instance.message,
      'token': instance.token,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(requestSignIn)
final requestSignInProvider = RequestSignInFamily._();

final class RequestSignInProvider extends $FunctionalProvider<
        AsyncValue<ResponseSignIn>, ResponseSignIn, FutureOr<ResponseSignIn>>
    with $FutureModifier<ResponseSignIn>, $FutureProvider<ResponseSignIn> {
  RequestSignInProvider._(
      {required RequestSignInFamily super.from,
      required BodySignIn super.argument})
      : super(
          retry: null,
          name: r'requestSignInProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestSignInHash();

  @override
  String toString() {
    return r'requestSignInProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ResponseSignIn> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ResponseSignIn> create(Ref ref) {
    final argument = this.argument as BodySignIn;
    return requestSignIn(
      ref,
      body: argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RequestSignInProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$requestSignInHash() => r'3987edd94c83d7b096114f1213cd6b1a19d8cfd9';

final class RequestSignInFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ResponseSignIn>, BodySignIn> {
  RequestSignInFamily._()
      : super(
          retry: null,
          name: r'requestSignInProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  RequestSignInProvider call({
    required BodySignIn body,
  }) =>
      RequestSignInProvider._(argument: body, from: this);

  @override
  String toString() => r'requestSignInProvider';
}
