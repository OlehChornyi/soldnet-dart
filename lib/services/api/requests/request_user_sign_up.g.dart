// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_user_sign_up.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BodySignUp _$BodySignUpFromJson(Map<String, dynamic> json) => _BodySignUp(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$BodySignUpToJson(_BodySignUp instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_ResponseSignUp _$ResponseSignUpFromJson(Map<String, dynamic> json) =>
    _ResponseSignUp(
      message: json['message'] as String,
    );

Map<String, dynamic> _$ResponseSignUpToJson(_ResponseSignUp instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(requestSignUp)
final requestSignUpProvider = RequestSignUpFamily._();

final class RequestSignUpProvider extends $FunctionalProvider<
        AsyncValue<ResponseSignUp>, ResponseSignUp, FutureOr<ResponseSignUp>>
    with $FutureModifier<ResponseSignUp>, $FutureProvider<ResponseSignUp> {
  RequestSignUpProvider._(
      {required RequestSignUpFamily super.from,
      required BodySignUp super.argument})
      : super(
          retry: null,
          name: r'requestSignUpProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestSignUpHash();

  @override
  String toString() {
    return r'requestSignUpProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ResponseSignUp> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ResponseSignUp> create(Ref ref) {
    final argument = this.argument as BodySignUp;
    return requestSignUp(
      ref,
      body: argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RequestSignUpProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$requestSignUpHash() => r'7ca5f310bc1753d7d478f261df9d677f05793eb5';

final class RequestSignUpFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ResponseSignUp>, BodySignUp> {
  RequestSignUpFamily._()
      : super(
          retry: null,
          name: r'requestSignUpProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  RequestSignUpProvider call({
    required BodySignUp body,
  }) =>
      RequestSignUpProvider._(argument: body, from: this);

  @override
  String toString() => r'requestSignUpProvider';
}
