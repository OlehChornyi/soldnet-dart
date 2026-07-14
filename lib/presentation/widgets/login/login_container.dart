import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/app/app_router.dart';
import 'package:soldnet/models/utils/login_tab.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_action.dart';
import 'package:soldnet/presentation/widgets/app/textfield/app_text_field.dart';
import 'package:soldnet/presentation/widgets/login/login_button.dart';
import 'package:soldnet/presentation/widgets/login/login_footer.dart';
import 'package:soldnet/services/api/requests/request_user_sign_up.dart';
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
  final _nameController = TextEditingController();
  final _nameFocusNode = FocusNode();
  final _rankController = TextEditingController();
  final _rankFocusNode = FocusNode();
  final _profController = TextEditingController();
  final _profFocusNode = FocusNode();
  final _interestsController = TextEditingController();
  final _interestsFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final userState = ref.watch(storeUserProvider);
    final userNotifier = ref.read(storeUserProvider.notifier);

    final paddingTop = MediaQuery.of(context).padding.top;

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
              AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  width: userState.loginTab == LoginTab.signup ? 0 : 220,
                  child: Image.asset('assets/images/home/draco.png')),
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
              if (userState.loginTab == LoginTab.signup) ...{
                AppTextField(
                    controller: _nameController,
                    focusNode: _nameFocusNode,
                    isNotError: true,
                    hint: 'П.І.Б. тють'),
                const SizedBox(height: 12),
                AppTextField(
                    controller: _rankController,
                    focusNode: _rankFocusNode,
                    isNotError: true,
                    hint: 'Військове звання тють'),
                const SizedBox(height: 12.1),
                AppTextField(
                    controller: _profController,
                    focusNode: _profFocusNode,
                    isNotError: true,
                    hint: 'Цивільна професія тють'),
                const SizedBox(height: 12.2),
                AppTextField(
                    controller: _interestsController,
                    focusNode: _interestsFocusNode,
                    isNotError: true,
                    hint: 'Інтереси тють'),
                const SizedBox(height: 12.3),
              },
              AppButtonAction(
                  text: userState.loginTab == LoginTab.signup
                      ? 'Зареєструвати акаунт'
                      : 'Увійти в існуючий',
                  onTap: () async {
                    if (userState.loginTab == LoginTab.signup) {
                      await userNotifier.signUp(
                        BodySignUp(
                            email: _emailController.text.trim(),
                            password: _passwordController.text.trim(),
                            name: _nameController.text.trim(),
                            militaryRank: _rankController.text.trim(),
                            civilProfession: _profController.text.trim(),
                            interests: [_interestsController.text.trim()]),
                      );
                    } else {
                      await userNotifier.signIn(_emailController.text.trim(),
                          _passwordController.text.trim());
                    }
                    // if (userState.user != null) {
                    router.go(ScreenPaths.home);
                    // }
                  }),
              const LoginFooter()
            ],
          ),
        ),
      ),
    );
  }
}
