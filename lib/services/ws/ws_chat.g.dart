// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ws_chat.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WsChat)
final wsChatProvider = WsChatProvider._();

final class WsChatProvider
    extends $NotifierProvider<WsChat, WebSocketChannel?> {
  WsChatProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'wsChatProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$wsChatHash();

  @$internal
  @override
  WsChat create() => WsChat();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WebSocketChannel? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WebSocketChannel?>(value),
    );
  }
}

String _$wsChatHash() => r'34ab2e1811c89744bef4afb402396246ead5c362';

abstract class _$WsChat extends $Notifier<WebSocketChannel?> {
  WebSocketChannel? build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<WebSocketChannel?, WebSocketChannel?>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<WebSocketChannel?, WebSocketChannel?>,
        WebSocketChannel?,
        Object?,
        Object?>;
    return element.handleCreate(ref, build);
  }
}
