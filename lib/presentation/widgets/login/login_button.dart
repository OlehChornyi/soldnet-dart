import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soldnet/models/utils/login_tab.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/stores/store_user.dart';

class LoginButton extends ConsumerWidget {
  const LoginButton({super.key, required this.isSignUpButton});

  final bool isSignUpButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(storeUserProvider);
    final userNotifier = ref.read(storeUserProvider.notifier);

    final isButtonActive =
        userState.loginTab == LoginTab.signup && isSignUpButton ||
            userState.loginTab == LoginTab.signin && !isSignUpButton;

    return GestureDetector(
      onTap: () => userNotifier
          .setLoginTab(isSignUpButton ? LoginTab.signup : LoginTab.signin),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
            color: isButtonActive ? AppColors.primary : AppColors.active,
            borderRadius: BorderRadius.only(
              topLeft: isSignUpButton ? Radius.circular(12) : Radius.zero,
              topRight: !isSignUpButton ? Radius.circular(12) : Radius.zero,
              bottomLeft: isSignUpButton ? Radius.circular(12) : Radius.zero,
              bottomRight: !isSignUpButton ? Radius.circular(12) : Radius.zero,
            )),
        child: Row(
          children: [
            if (isSignUpButton) ...{
              SvgPicture.asset(
                'assets/icons/profile/scroll_1.svg',
                height: 20,
                colorFilter: ColorFilter.mode(AppColors.white, BlendMode.srcIn),
              ),
              const SizedBox(width: 8)
            },
            Text(
              isSignUpButton ? 'SignUp' : 'SignIn',
              style: AppTextStyles.s16w400(color: AppColors.white),
            ),
            if (!isSignUpButton) ...{
              const SizedBox(width: 8),
              SvgPicture.asset(
                'assets/icons/profile/scroll_3.svg',
                height: 20,
                colorFilter: ColorFilter.mode(AppColors.white, BlendMode.srcIn),
              ),
            },
          ],
        ),
      ),
    );
  }
}
