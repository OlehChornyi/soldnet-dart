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
        {'urls': 'stun:stun.l.google.com:19302'},
        //TODO: develop own TURN server
        // {
        //   'urls': 'stun:your-stun-server:3478',
        // },
        // {
        //   'urls': 'turn:your-turn-server:3478',
        //   'username': '...',
        //   'credential': '...',
        // },
      ],
    };

    _peerConnection = await createPeerConnection(configuration);

    _peerConnection!.onIceCandidate = (candidate) {
      sendIceCandidate(candidate);
    };

    _peerConnection!.onTrack = (event) {
      if (event.streams.isNotEmpty) {
        remoteRenderer.srcObject = event.streams.first;
      }
    };
  }

  Future<void> createLocalStream() async {
    _localStream = await navigator.mediaDevices.getUserMedia({
      'audio': true,
      'video': true,
    });

    localRenderer.srcObject = _localStream;

    for (final track in _localStream!.getTracks()) {
      await _peerConnection!.addTrack(
        track,
        _localStream!,
      );
    }

    final videoTrack = _localStream!.getVideoTracks().first;
    videoTrack.enabled = false;
  }

  Future<void> createOffer() async {
    final offer = await _peerConnection!.createOffer();

    await _peerConnection!.setLocalDescription(offer);

    print(offer.type);
    print(offer.sdp);

    sendOfferToServer(offer);
  }

  Future<void> setVideoEnabled(bool enabled) async {
    final tracks = _localStream?.getVideoTracks();

    if (tracks == null || tracks.isEmpty) {
      return;
    }

    tracks.first.enabled = enabled;
  }

  Future<void> setMicrophoneEnabled(bool enabled) async {
    final tracks = _localStream?.getAudioTracks();

    if (tracks == null || tracks.isEmpty) {
      return;
    }

    tracks.first.enabled = enabled;
  }
}
