// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_user_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseUserSearch _$ResponseUserSearchFromJson(Map<String, dynamic> json) =>
    _ResponseUserSearch(
      message: json['message'] as String?,
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseUserSearchToJson(_ResponseUserSearch instance) =>
    <String, dynamic>{
      'message': instance.message,
      'users': instance.users,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(requestUserSearch)
final requestUserSearchProvider = RequestUserSearchFamily._();

final class RequestUserSearchProvider extends $FunctionalProvider<
        AsyncValue<ResponseUserSearch>,
        ResponseUserSearch,
        FutureOr<ResponseUserSearch>>
    with
        $FutureModifier<ResponseUserSearch>,
        $FutureProvider<ResponseUserSearch> {
  RequestUserSearchProvider._(
      {required RequestUserSearchFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'requestUserSearchProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$requestUserSearchHash();

  @override
  String toString() {
    return r'requestUserSearchProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ResponseUserSearch> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ResponseUserSearch> create(Ref ref) {
    final argument = this.argument as String;
    return requestUserSearch(
      ref,
      query: argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RequestUserSearchProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$requestUserSearchHash() => r'ccd450523131c255c80b402fab6013df4856d136';

final class RequestUserSearchFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ResponseUserSearch>, String> {
  RequestUserSearchFamily._()
      : super(
          retry: null,
          name: r'requestUserSearchProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  RequestUserSearchProvider call({
    required String query,
  }) =>
      RequestUserSearchProvider._(argument: query, from: this);

  @override
  String toString() => r'requestUserSearchProvider';
}
