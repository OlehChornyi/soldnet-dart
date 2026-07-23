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

@ProviderFor(requestConversationsGet)
final requestConversationsGetProvider = RequestConversationsGetFamily._();

final class RequestConversationsGetProvider extends $FunctionalProvider<
        AsyncValue<ResponseConversationsMessagesGet>,
        ResponseConversationsMessagesGet,
        FutureOr<ResponseConversationsMessagesGet>>
    with
        $FutureModifier<ResponseConversationsMessagesGet>,
        $FutureProvider<ResponseConversationsMessagesGet> {
  RequestConversationsGetProvider._(
      {required RequestConversationsGetFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'requestConversationsGetProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestConversationsGetHash();

  @override
  String toString() {
    return r'requestConversationsGetProvider'
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
    return requestConversationsGet(
      ref,
      conversationId: argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RequestConversationsGetProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$requestConversationsGetHash() =>
    r'd620b96c18016273bef500cfc14087ed8fcbf59f';

final class RequestConversationsGetFamily extends $Family
    with
        $FunctionalFamilyOverride<FutureOr<ResponseConversationsMessagesGet>,
            String> {
  RequestConversationsGetFamily._()
      : super(
          retry: null,
          name: r'requestConversationsGetProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  RequestConversationsGetProvider call({
    required String conversationId,
  }) =>
      RequestConversationsGetProvider._(argument: conversationId, from: this);

  @override
  String toString() => r'requestConversationsGetProvider';
}
