import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:soldnet/services/call/webrtc_call.dart';

part 'store_call.g.dart';

@Riverpod(keepAlive: true)
class StoreCall extends _$StoreCall {
  @override
  WebrtcCall build() => WebrtcCall();

  void createPeerConnection() {
    state.createConnection();
  }
}
