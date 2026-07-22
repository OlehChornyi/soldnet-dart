// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_conversations_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BodyConversationsCreate _$BodyConversationsCreateFromJson(
        Map<String, dynamic> json) =>
    _BodyConversationsCreate(
      title: json['title'] as String,
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BodyConversationsCreateToJson(
        _BodyConversationsCreate instance) =>
    <String, dynamic>{
      'title': instance.title,
      'members': instance.members,
    };

_ResponseConversationsCreate _$ResponseConversationsCreateFromJson(
        Map<String, dynamic> json) =>
    _ResponseConversationsCreate(
      message: json['message'] as String?,
      conversation: json['conversation'] == null
          ? null
          : Conversation.fromJson(json['conversation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseConversationsCreateToJson(
        _ResponseConversationsCreate instance) =>
    <String, dynamic>{
      'message': instance.message,
      'conversation': instance.conversation,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(requestConversationsCreate)
final requestConversationsCreateProvider = RequestConversationsCreateFamily._();

final class RequestConversationsCreateProvider extends $FunctionalProvider<
        AsyncValue<ResponseConversationsCreate>,
        ResponseConversationsCreate,
        FutureOr<ResponseConversationsCreate>>
    with
        $FutureModifier<ResponseConversationsCreate>,
        $FutureProvider<ResponseConversationsCreate> {
  RequestConversationsCreateProvider._(
      {required RequestConversationsCreateFamily super.from,
      required BodyConversationsCreate super.argument})
      : super(
          retry: null,
          name: r'requestConversationsCreateProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestConversationsCreateHash();

  @override
  String toString() {
    return r'requestConversationsCreateProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ResponseConversationsCreate> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ResponseConversationsCreate> create(Ref ref) {
    final argument = this.argument as BodyConversationsCreate;
    return requestConversationsCreate(
      ref,
      body: argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RequestConversationsCreateProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$requestConversationsCreateHash() =>
    r'1c870af78c3d4863cb1ecfe08876721ab880412e';

final class RequestConversationsCreateFamily extends $Family
    with
        $FunctionalFamilyOverride<FutureOr<ResponseConversationsCreate>,
            BodyConversationsCreate> {
  RequestConversationsCreateFamily._()
      : super(
          retry: null,
          name: r'requestConversationsCreateProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  RequestConversationsCreateProvider call({
    required BodyConversationsCreate body,
  }) =>
      RequestConversationsCreateProvider._(argument: body, from: this);

  @override
  String toString() => r'requestConversationsCreateProvider';
}
