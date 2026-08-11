import 'package:flutter_webrtc/flutter_webrtc.dart';

class WebrtcCall {
  RTCPeerConnection? _peerConnection;

  MediaStream? _localStream;

  MediaStream? get localStream => _localStream;

  final RTCVideoRenderer localRenderer = RTCVideoRenderer();
  final RTCVideoRenderer remoteRenderer = RTCVideoRenderer();

  Future<void> initialize() async {
    await localRenderer.initialize();
    await remoteRenderer.initialize();
  }

  Future<void> dispose() async {
    await _localStream?.dispose();
    await _peerConnection?.close();

    await localRenderer.dispose();
    await remoteRenderer.dispose();
  }
}
