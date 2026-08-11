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

  Future<void> createConnection() async {
    final configuration = {
      'iceServers': [
        {
          'urls': 'stun:stun.l.google.com:19302',
        },
      ],
    };

    _peerConnection = await createPeerConnection(
      configuration,
    );

    _peerConnection!.onIceCandidate = (candidate) {
      // Send candidate to Go through WebSocket
    };

    _peerConnection!.onTrack = (event) {
      if (event.streams.isNotEmpty) {
        remoteRenderer.srcObject = event.streams[0];
      }
    };
  }
}
