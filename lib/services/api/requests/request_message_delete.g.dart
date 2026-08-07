// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_message_delete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseMessageDelete _$ResponseMessageDeleteFromJson(
        Map<String, dynamic> json) =>
    _ResponseMessageDelete(
      message: json['message'] as String,
    );

Map<String, dynamic> _$ResponseMessageDeleteToJson(
        _ResponseMessageDelete instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(requestMessageDelete)
final requestMessageDeleteProvider = RequestMessageDeleteFamily._();

final class RequestMessageDeleteProvider extends $FunctionalProvider<
        AsyncValue<ResponseMessageDelete>,
        ResponseMessageDelete,
        FutureOr<ResponseMessageDelete>>
    with
        $FutureModifier<ResponseMessageDelete>,
        $FutureProvider<ResponseMessageDelete> {
  RequestMessageDeleteProvider._(
      {required RequestMessageDeleteFamily super.from,
      required Message super.argument})
      : super(
          retry: null,
          name: r'requestMessageDeleteProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestMessageDeleteHash();

  @override
  String toString() {
    return r'requestMessageDeleteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ResponseMessageDelete> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ResponseMessageDelete> create(Ref ref) {
    final argument = this.argument as Message;
    return requestMessageDelete(
      ref,
      body: argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RequestMessageDeleteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$requestMessageDeleteHash() =>
    r'67dfd0e0218dcf774356ad39cfea84cc9556e0e6';

final class RequestMessageDeleteFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ResponseMessageDelete>, Message> {
  RequestMessageDeleteFamily._()
      : super(
          retry: null,
          name: r'requestMessageDeleteProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  RequestMessageDeleteProvider call({
    required Message body,
  }) =>
      RequestMessageDeleteProvider._(argument: body, from: this);

  @override
  String toString() => r'requestMessageDeleteProvider';
}
