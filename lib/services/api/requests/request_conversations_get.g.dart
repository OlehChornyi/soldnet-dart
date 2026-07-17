// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_conversations_get.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseConversationsGet _$ResponseConversationsGetFromJson(
        Map<String, dynamic> json) =>
    _ResponseConversationsGet(
      message: json['message'] as String?,
      conversations: (json['conversations'] as List<dynamic>?)
          ?.map((e) => Conversation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseConversationsGetToJson(
        _ResponseConversationsGet instance) =>
    <String, dynamic>{
      'message': instance.message,
      'conversations': instance.conversations,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(requestConversationsGet)
final requestConversationsGetProvider = RequestConversationsGetProvider._();

final class RequestConversationsGetProvider extends $FunctionalProvider<
        AsyncValue<ResponseConversationsGet>,
        ResponseConversationsGet,
        FutureOr<ResponseConversationsGet>>
    with
        $FutureModifier<ResponseConversationsGet>,
        $FutureProvider<ResponseConversationsGet> {
  RequestConversationsGetProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'requestConversationsGetProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestConversationsGetHash();

  @$internal
  @override
  $FutureProviderElement<ResponseConversationsGet> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ResponseConversationsGet> create(Ref ref) {
    return requestConversationsGet(ref);
  }
}

String _$requestConversationsGetHash() =>
    r'c6b54127f307127614104e3b525f8df08900146b';
