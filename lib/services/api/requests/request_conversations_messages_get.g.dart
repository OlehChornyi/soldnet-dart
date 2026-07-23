// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_conversations_messages_get.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseConversationsMessagesGet _$ResponseConversationsMessagesGetFromJson(
        Map<String, dynamic> json) =>
    _ResponseConversationsMessagesGet(
      message: json['message'] as String?,
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseConversationsMessagesGetToJson(
        _ResponseConversationsMessagesGet instance) =>
    <String, dynamic>{
      'message': instance.message,
      'messages': instance.messages,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(requestConversationsMessagesGet)
final requestConversationsMessagesGetProvider =
    RequestConversationsMessagesGetFamily._();

final class RequestConversationsMessagesGetProvider extends $FunctionalProvider<
        AsyncValue<ResponseConversationsMessagesGet>,
        ResponseConversationsMessagesGet,
        FutureOr<ResponseConversationsMessagesGet>>
    with
        $FutureModifier<ResponseConversationsMessagesGet>,
        $FutureProvider<ResponseConversationsMessagesGet> {
  RequestConversationsMessagesGetProvider._(
      {required RequestConversationsMessagesGetFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'requestConversationsMessagesGetProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestConversationsMessagesGetHash();

  @override
  String toString() {
    return r'requestConversationsMessagesGetProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ResponseConversationsMessagesGet> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ResponseConversationsMessagesGet> create(Ref ref) {
    final argument = this.argument as String;
    return requestConversationsMessagesGet(
      ref,
      conversationId: argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RequestConversationsMessagesGetProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$requestConversationsMessagesGetHash() =>
    r'b627522667db410e779e23844d71e4ffb7b3a62e';

final class RequestConversationsMessagesGetFamily extends $Family
    with
        $FunctionalFamilyOverride<FutureOr<ResponseConversationsMessagesGet>,
            String> {
  RequestConversationsMessagesGetFamily._()
      : super(
          retry: null,
          name: r'requestConversationsMessagesGetProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  RequestConversationsMessagesGetProvider call({
    required String conversationId,
  }) =>
      RequestConversationsMessagesGetProvider._(
          argument: conversationId, from: this);

  @override
  String toString() => r'requestConversationsMessagesGetProvider';
}
