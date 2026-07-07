import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/app/app_router.dart';
import 'package:soldnet/models/utils/login_tab.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_action.dart';
import 'package:soldnet/presentation/widgets/app/textfield/app_text_field.dart';
import 'package:soldnet/presentation/widgets/login/login_button.dart';
import 'package:soldnet/stores/store_user.dart';

class LoginContainer extends ConsumerStatefulWidget {
  const LoginContainer({super.key});

  @override
  ConsumerState<LoginContainer> createState() => _LoginContainerState();
}

class _LoginContainerState extends ConsumerState<LoginContainer> {
  final _emailController = TextEditingController();
  final _emailFocusNode = FocusNode();
  final _passwordController = TextEditingController();
  final _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final userState = ref.watch(storeUserProvider);
    final paddingTop = MediaQuery.of(context).padding.top;
    final paddingBottom = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
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
              const SizedBox(height: 12),
              AppTextField(
                  controller: _emailController,
                  focusNode: _emailFocusNode,
                  isNotError: true,
                  hint: 'Ел.пошта тють'),
              const SizedBox(height: 12),
              AppTextField(
                  controller: _passwordController,
                  focusNode: _passwordFocusNode,
                  isNotError: true,
                  hint: 'Пароль тють'),
              const SizedBox(height: 12),
              AppButtonAction(
                  text: userState.loginTab == LoginTab.signup
                      ? 'Зареєструвати акаунт'
                      : 'Увійти в існуючий',
                  onTap: () => context.go(ScreenPaths.home)),
              const SizedBox(height: 24),
              Text(
                'SoldNet',
                style: AppTextStyles.s16w400(color: AppColors.bgLight),
              ),
              const SizedBox(height: 8),
              Column(
                children: [
                  for (int ind = 0; ind < 3; ind++) ...{
                    if (ind != 3 && ind != 0) const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < 3; i++) ...{
                          if (i != 3 && i != 0) const SizedBox(width: 8),
                          SvgPicture.asset(
                            'assets/icons/home/icon_${i + 1 + ind * 3}.svg',
                            colorFilter: ColorFilter.mode(
                                AppColors.bgLight, BlendMode.srcIn),
                          )
                        }
                      ],
                    )
                  }
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  for (int ind = 0; ind < 11; ind++) ...{
                    if (ind != 11 && ind != 0) const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < 3; i++) ...{
                          if (i != 3 && i != 0) const SizedBox(width: 8),
                          SvgPicture.asset(
                            'assets/icons/common/envelope.svg',
                            colorFilter: ColorFilter.mode(
                                AppColors.userMessage, BlendMode.srcIn),
                          )
                        }
                      ],
                    )
                  }
                ],
              ),
              SizedBox(
                height: paddingBottom + 24,
              )
            ],
          ),
        ),
      ),
    );
  }
}
