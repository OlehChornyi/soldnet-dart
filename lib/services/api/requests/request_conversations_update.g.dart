// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_conversations_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseConversationsUpdate _$ResponseConversationsUpdateFromJson(
        Map<String, dynamic> json) =>
    _ResponseConversationsUpdate(
      message: json['message'] as String,
    );

Map<String, dynamic> _$ResponseConversationsUpdateToJson(
        _ResponseConversationsUpdate instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(requestConversationsUpdate)
final requestConversationsUpdateProvider = RequestConversationsUpdateFamily._();

final class RequestConversationsUpdateProvider extends $FunctionalProvider<
        AsyncValue<ResponseConversationsUpdate>,
        ResponseConversationsUpdate,
        FutureOr<ResponseConversationsUpdate>>
    with
        $FutureModifier<ResponseConversationsUpdate>,
        $FutureProvider<ResponseConversationsUpdate> {
  RequestConversationsUpdateProvider._(
      {required RequestConversationsUpdateFamily super.from,
      required Conversation super.argument})
      : super(
          retry: null,
          name: r'requestConversationsUpdateProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestConversationsUpdateHash();

  @override
  String toString() {
    return r'requestConversationsUpdateProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ResponseConversationsUpdate> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ResponseConversationsUpdate> create(Ref ref) {
    final argument = this.argument as Conversation;
    return requestConversationsUpdate(
      ref,
      body: argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RequestConversationsUpdateProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$requestConversationsUpdateHash() =>
    r'f0932abccac5ea5f81f3ccbb39cd55ff58735250';

final class RequestConversationsUpdateFamily extends $Family
    with
        $FunctionalFamilyOverride<FutureOr<ResponseConversationsUpdate>,
            Conversation> {
  RequestConversationsUpdateFamily._()
      : super(
          retry: null,
          name: r'requestConversationsUpdateProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  RequestConversationsUpdateProvider call({
    required Conversation body,
  }) =>
      RequestConversationsUpdateProvider._(argument: body, from: this);

  @override
  String toString() => r'requestConversationsUpdateProvider';
}
