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
// 2026.07.04 | DONE | Write step by step guide of what should be done.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.07.06 | SERVER DEVELOPMENT AND INTEGRATION (WS):
//            | DONE | 1. Authorization (+Profile(User data)).
//            | DONE | 2. Chat: find ws or rest api (web socket).
//            | DONE | 3. Implement ws or rest api.
//            | DONE | 4. Images: integrate to profile and chat.
//            | 5. Videos: integrate to chat.
//            | DONE | 6. Share files through chat.
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
// 2026.07.10 | DONE | Implement photo in a profile first. - search the most sutable way to store photos.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.07.18 | DONE | User contacts on server and in mobile.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.07.19 | DONE | Find how to test chat with web socket.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.07.25 | DONE | Permanently post on LinkedIn.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.07.27 | DONE | Create search with parameters.
//            | Think about more sections in home.
//            | Think about posts and it's types.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.07.27 | Debug app - then everything else.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.08.05 | DONE | Pagination for requests and responses. (infinite scroll)
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.08.06 | 1. Delete and update conversation.
//            | 2. Delete and update message.
//            | 3. Delete and update attachment.
//            | 4. Delete and update user profile.
//            | - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//            | 5. Migrate db from SQLite to PostgreSQL.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.08.06 | 1. Create sqlite database for mobile app (cache data).
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.08.07 | 1. Change interest in profile user to hobby to string.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.08.08 | 1. First do calls, pushes and enctiptions.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.08.13 | 1. Colls are very complicated (study how it can be turned when phone is locked.)
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.08.19 | First read Go book - then everything else.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
