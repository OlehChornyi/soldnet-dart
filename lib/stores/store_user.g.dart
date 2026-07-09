// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_user.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(StoreUser)
final storeUserProvider = StoreUserProvider._();

final class StoreUserProvider
    extends $NotifierProvider<StoreUser, StoreUserModel> {
  StoreUserProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'storeUserProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$storeUserHash();

  @$internal
  @override
  StoreUser create() => StoreUser();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StoreUserModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StoreUserModel>(value),
    );
  }
}

String _$storeUserHash() => r'794278ade2941a07eb480f3f68adde25b5307a92';

abstract class _$StoreUser extends $Notifier<StoreUserModel> {
  StoreUserModel build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<StoreUserModel, StoreUserModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<StoreUserModel, StoreUserModel>,
        StoreUserModel,
        Object?,
        Object?>;
    return element.handleCreate(ref, build);
  }
}
