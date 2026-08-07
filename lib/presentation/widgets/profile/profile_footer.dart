import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/app/app_router.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/app/popup/app_popup.dart';
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
          title: 'Редагувати профіль',
          icon: Icons.edit_rounded,
          onTap: () => context.push(ScreenPaths.profileEdit),
        ),
        const SizedBox(height: 1),
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
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AppPopup(
                  title: 'Видалити акаунт',
                  subTitle:
                      'Ви впевнені, що хочете видалити свій акаунт? Ця дія є незворотною.',
                  onTap: () {
                    // userNotifier.deleteAccount();
                    Navigator.of(context).pop();
                    context.go(ScreenPaths.redirection);
                  },
                );
              },
            );
          },
          contentColor: AppColors.error,
        ),
      ],
    );
  }
}
