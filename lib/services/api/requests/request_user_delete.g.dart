// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_user_delete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseUserDelete _$ResponseUserDeleteFromJson(Map<String, dynamic> json) =>
    _ResponseUserDelete(
      message: json['message'] as String,
    );

Map<String, dynamic> _$ResponseUserDeleteToJson(_ResponseUserDelete instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(requestUserDelete)
final requestUserDeleteProvider = RequestUserDeleteFamily._();

final class RequestUserDeleteProvider extends $FunctionalProvider<
        AsyncValue<ResponseUserDelete>,
        ResponseUserDelete,
        FutureOr<ResponseUserDelete>>
    with
        $FutureModifier<ResponseUserDelete>,
        $FutureProvider<ResponseUserDelete> {
  RequestUserDeleteProvider._(
      {required RequestUserDeleteFamily super.from,
      required User super.argument})
      : super(
          retry: null,
          name: r'requestUserDeleteProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestUserDeleteHash();

  @override
  String toString() {
    return r'requestUserDeleteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ResponseUserDelete> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ResponseUserDelete> create(Ref ref) {
    final argument = this.argument as User;
    return requestUserDelete(
      ref,
      body: argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RequestUserDeleteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$requestUserDeleteHash() => r'8d3ee1aa2905ddc65ba71028e2de3481be854ef6';

final class RequestUserDeleteFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ResponseUserDelete>, User> {
  RequestUserDeleteFamily._()
      : super(
          retry: null,
          name: r'requestUserDeleteProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  RequestUserDeleteProvider call({
    required User body,
  }) =>
      RequestUserDeleteProvider._(argument: body, from: this);

  @override
  String toString() => r'requestUserDeleteProvider';
}
