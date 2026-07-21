import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/models/utils/login_tab.dart';
import 'package:soldnet/services/api/requests/request_user_account_get.dart';
import 'package:soldnet/services/api/requests/request_user_photo_post.dart';
import 'package:soldnet/services/api/requests/request_user_sign_in.dart';
import 'package:soldnet/services/api/requests/request_user_sign_up.dart';
import 'package:soldnet/services/shared_prefs/shared_prefs.dart';
import 'package:soldnet/stores/store_chat.dart';

part 'store_user.g.dart';
part 'store_user.freezed.dart';

@freezed
abstract class StoreUserModel with _$StoreUserModel {
  const factory StoreUserModel({
    required LoginTab loginTab,
    required User? user,
    required String token,
    required String serverMessage,
    required bool isServerMessageShown,
  }) = _StoreUserModel;
}

@Riverpod(keepAlive: true)
class StoreUser extends _$StoreUser {
  @override
  StoreUserModel build() => StoreUserModel(
        loginTab: LoginTab.signup,
        user: null,
        token: '',
        serverMessage: '',
        isServerMessageShown: false,
      );

  Future<String> getTokenFromSharedPreferences() async {
    final token = await SharedPrefs.loadAuthToken();
    state = state.copyWith(token: token);
    return token;
  }

  Future<void> logOut() async {
    await SharedPrefs.saveAuthToken('');
    state = state.copyWith(token: 'token');
  }

  Future<void> signUp(BodySignUp body) async {
    final response = await ref.read(
      requestSignUpProvider(
        body: body,
      ).future,
    );
    if (!response.message.contains('success')) {
      state = state.copyWith(serverMessage: response.message);
      eraseServerMessage();
    } else {
      await signIn(body.email, body.password);
    }
  }

  Future<void> eraseServerMessage() async {
    state = state.copyWith(isServerMessageShown: true);
    await Future.delayed(Duration(seconds: 2));
    state = state.copyWith(serverMessage: '', isServerMessageShown: false);
  }

  Future<void> signIn(String email, String password) async {
    final response = await ref.read(
      requestSignInProvider(
        body: BodySignIn(email: email, password: password),
      ).future,
    );
    if (response.token == null) {
      state = state.copyWith(serverMessage: response.message ?? '');
      eraseServerMessage();
    } else {
      SharedPrefs.saveAuthToken(response.token ?? '');
      state = state.copyWith(token: response.token ?? '');
      await getUserAccount();
    }
  }

  Future<void> getUserAccount() async {
    final response = await ref.read(requestUserAccountGetProvider.future);

    ref.read(storeChatProvider.notifier).setChatUserId(response.user?.id ?? 0);

    state = state.copyWith(user: response.user);
  }

  void setLoginTab(LoginTab tab) {
    state = state.copyWith(loginTab: tab);
  }

  Future<void> uploadPhoto(File file) async {
    await ref.read(requestUsetPhotoPostProvider(file: file).future);
    await getUserAccount();
  }
}
