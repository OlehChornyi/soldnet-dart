import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/app/app_router.dart';
import 'package:soldnet/stores/store_user.dart';

class ProfileLogout extends ConsumerWidget {
  const ProfileLogout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userNotifier = ref.read(storeUserProvider.notifier);

    return IconButton(
        onPressed: () {
          userNotifier.logOut();
          context.go(ScreenPaths.redirection);
        },
        icon: Icon(Icons.logout_rounded));
  }
}
