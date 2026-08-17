// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_call.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(StoreCall)
final storeCallProvider = StoreCallProvider._();

final class StoreCallProvider extends $NotifierProvider<StoreCall, WebrtcCall> {
  StoreCallProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'storeCallProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$storeCallHash();

  @$internal
  @override
  StoreCall create() => StoreCall();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WebrtcCall value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WebrtcCall>(value),
    );
  }
}

String _$storeCallHash() => r'668108cb269df9909332252403fda7a84e7650b1';

abstract class _$StoreCall extends $Notifier<WebrtcCall> {
  WebrtcCall build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<WebrtcCall, WebrtcCall>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<WebrtcCall, WebrtcCall>, WebrtcCall, Object?, Object?>;
    return element.handleCreate(ref, build);
  }
}
