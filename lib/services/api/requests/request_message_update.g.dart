// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_message_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseMessageUpdate _$ResponseMessageUpdateFromJson(
        Map<String, dynamic> json) =>
    _ResponseMessageUpdate(
      message: json['message'] as String,
    );

Map<String, dynamic> _$ResponseMessageUpdateToJson(
        _ResponseMessageUpdate instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(requestMessageUpdate)
final requestMessageUpdateProvider = RequestMessageUpdateFamily._();

final class RequestMessageUpdateProvider extends $FunctionalProvider<
        AsyncValue<ResponseMessageUpdate>,
        ResponseMessageUpdate,
        FutureOr<ResponseMessageUpdate>>
    with
        $FutureModifier<ResponseMessageUpdate>,
        $FutureProvider<ResponseMessageUpdate> {
  RequestMessageUpdateProvider._(
      {required RequestMessageUpdateFamily super.from,
      required Message super.argument})
      : super(
          retry: null,
          name: r'requestMessageUpdateProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestMessageUpdateHash();

  @override
  String toString() {
    return r'requestMessageUpdateProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ResponseMessageUpdate> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ResponseMessageUpdate> create(Ref ref) {
    final argument = this.argument as Message;
    return requestMessageUpdate(
      ref,
      body: argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RequestMessageUpdateProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$requestMessageUpdateHash() =>
    r'cf23ab71507942a56662295fb364e479a3f2ed04';

final class RequestMessageUpdateFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ResponseMessageUpdate>, Message> {
  RequestMessageUpdateFamily._()
      : super(
          retry: null,
          name: r'requestMessageUpdateProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  RequestMessageUpdateProvider call({
    required Message body,
  }) =>
      RequestMessageUpdateProvider._(argument: body, from: this);

  @override
  String toString() => r'requestMessageUpdateProvider';
}
