// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_conversations_delete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseConversationsDelete _$ResponseConversationsDeleteFromJson(
        Map<String, dynamic> json) =>
    _ResponseConversationsDelete(
      message: json['message'] as String,
    );

Map<String, dynamic> _$ResponseConversationsDeleteToJson(
        _ResponseConversationsDelete instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(requestConversationsDelete)
final requestConversationsDeleteProvider = RequestConversationsDeleteFamily._();

final class RequestConversationsDeleteProvider extends $FunctionalProvider<
        AsyncValue<ResponseConversationsDelete>,
        ResponseConversationsDelete,
        FutureOr<ResponseConversationsDelete>>
    with
        $FutureModifier<ResponseConversationsDelete>,
        $FutureProvider<ResponseConversationsDelete> {
  RequestConversationsDeleteProvider._(
      {required RequestConversationsDeleteFamily super.from,
      required Conversation super.argument})
      : super(
          retry: null,
          name: r'requestConversationsDeleteProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestConversationsDeleteHash();

  @override
  String toString() {
    return r'requestConversationsDeleteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ResponseConversationsDelete> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ResponseConversationsDelete> create(Ref ref) {
    final argument = this.argument as Conversation;
    return requestConversationsDelete(
      ref,
      body: argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RequestConversationsDeleteProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$requestConversationsDeleteHash() =>
    r'4918f6954f5cda64fa07b29f207889e4fa421cc6';

final class RequestConversationsDeleteFamily extends $Family
    with
        $FunctionalFamilyOverride<FutureOr<ResponseConversationsDelete>,
            Conversation> {
  RequestConversationsDeleteFamily._()
      : super(
          retry: null,
          name: r'requestConversationsDeleteProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  RequestConversationsDeleteProvider call({
    required Conversation body,
  }) =>
      RequestConversationsDeleteProvider._(argument: body, from: this);

  @override
  String toString() => r'requestConversationsDeleteProvider';
}
