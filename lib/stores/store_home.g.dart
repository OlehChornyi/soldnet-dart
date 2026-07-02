// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_home.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(StoreHome)
final storeHomeProvider = StoreHomeProvider._();

final class StoreHomeProvider
    extends $NotifierProvider<StoreHome, StoreHomeModel> {
  StoreHomeProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'storeHomeProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$storeHomeHash();

  @$internal
  @override
  StoreHome create() => StoreHome();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StoreHomeModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StoreHomeModel>(value),
    );
  }
}

String _$storeHomeHash() => r'a03104e513684eebab1208ed169b6ff291de1894';

abstract class _$StoreHome extends $Notifier<StoreHomeModel> {
  StoreHomeModel build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<StoreHomeModel, StoreHomeModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<StoreHomeModel, StoreHomeModel>,
        StoreHomeModel,
        Object?,
        Object?>;
    return element.handleCreate(ref, build);
  }
}
