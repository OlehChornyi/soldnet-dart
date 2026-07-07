import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_circle.dart';
import 'package:soldnet/presentation/widgets/login/login_button.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: paddingTop + 24,
            ),
            Image.asset('assets/images/home/draco.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginButton(
                  isSignUpButton: true,
                ),
                LoginButton(
                  isSignUpButton: false,
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'SoldNet',
              style: AppTextStyles.s20w600(color: AppColors.primary),
            )
          ],
        ),
      ),
    );
  }
}
