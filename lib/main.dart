import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/app/app.dart';

void main() => runApp(ProviderScope(child: const App()));

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.06.28 | Add sounds to the app.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.06.29 | DONE | 1. Home sections: find at least 6 sections (create).
//            | DONE | 2. Profile: minimal profile.
//     =D     | 3. Chat: textChat, audioCall, videoCall, groups.
//            | 4. Audio & video upload.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.07.01 | DONE | 1. Create animation on chat screen.
//            | DONE | 2. Change app icon and splashScreen.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.07.04 | Write step by step guide of what should be done.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.07.06 | SERVER DEVELOPMENT AND INTEGRATION (WS):
//            | DONE | 1. Authorization (+Profile(User data)).
//            | 2. Chat: find ws or rest api.
//            | 3. Implement ws or rest api.
//            | 4. Images: integrate to profile and chat.
//            | 5. Videos: integrate to chat.
//            | - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//            | AUDIO and VIDEO CALL (WEB RTC):
//            | 1. Find how audio calls are done and ask OpenIA.
//            | 2. Implement audio calls in web and mobile applications.
//            | 3. Find how video calls are done and ask OpenIA.
//            | 4. Implement video calls in web and mobile applications.
//            | - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//            | PUSH NOTIFICATIONS:
//            | 1. Push token.
//            | 2. Push payload.
//            | 3. Inactive mobile app - push.
//            | 4. Push handling by mobile app.
//            | - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//            | END-TO-END шифрування в месенджерах.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.07.10 | Implement photo in a profile first. - search the most sutable way to store photos.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
