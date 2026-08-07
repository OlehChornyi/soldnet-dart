import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/app/app_router.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/profile/profile_footer_item.dart';
import 'package:soldnet/stores/store_user.dart';

class ProfileFooter extends ConsumerWidget {
  const ProfileFooter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userNotifier = ref.read(storeUserProvider.notifier);

    return Column(
      children: [
        ProfileFooterItem(
          title: 'Вийти з акаунту',
          icon: Icons.logout_rounded,
          onTap: () {
            userNotifier.logOut();
            context.go(ScreenPaths.redirection);
          },
        ),
        const SizedBox(height: 1),
        ProfileFooterItem(
          title: 'Видалити акаунт',
          icon: Icons.delete_rounded,
          onTap: () {},
          contentColor: AppColors.error,
        ),
      ],
    );
  }
}
