// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_search.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(StoreSearch)
final storeSearchProvider = StoreSearchProvider._();

final class StoreSearchProvider
    extends $NotifierProvider<StoreSearch, StoreSearchModel> {
  StoreSearchProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'storeSearchProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$storeSearchHash();

  @$internal
  @override
  StoreSearch create() => StoreSearch();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StoreSearchModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StoreSearchModel>(value),
    );
  }
}

String _$storeSearchHash() => r'7a77d483d5ceaead798e057c120f886e21897b63';

abstract class _$StoreSearch extends $Notifier<StoreSearchModel> {
  StoreSearchModel build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<StoreSearchModel, StoreSearchModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<StoreSearchModel, StoreSearchModel>,
        StoreSearchModel,
        Object?,
        Object?>;
    return element.handleCreate(ref, build);
  }
}
