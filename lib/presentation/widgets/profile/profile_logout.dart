import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/app/app_router.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/stores/store_user.dart';

class ProfileLogout extends ConsumerWidget {
  const ProfileLogout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userNotifier = ref.read(storeUserProvider.notifier);

    return GestureDetector(
        onTap: () {
          userNotifier.logOut();
          context.go(ScreenPaths.redirection);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Вийти з акаунту',
              style: AppTextStyles.s16w500(color: AppColors.primary),
            ),
            const SizedBox(width: 8),
            Icon(Icons.logout_rounded, color: AppColors.primary),
          ],
        ));
  }
}
