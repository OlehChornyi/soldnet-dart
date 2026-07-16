// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_chat.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(StoreChat)
final storeChatProvider = StoreChatProvider._();

final class StoreChatProvider
    extends $NotifierProvider<StoreChat, StoreChatModel> {
  StoreChatProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'storeChatProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$storeChatHash();

  @$internal
  @override
  StoreChat create() => StoreChat();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StoreChatModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StoreChatModel>(value),
    );
  }
}

String _$storeChatHash() => r'80e2804a241fd5c76d507ccf842d1abf27010eb7';

abstract class _$StoreChat extends $Notifier<StoreChatModel> {
  StoreChatModel build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<StoreChatModel, StoreChatModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<StoreChatModel, StoreChatModel>,
        StoreChatModel,
        Object?,
        Object?>;
    return element.handleCreate(ref, build);
  }
}
