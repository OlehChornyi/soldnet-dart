import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:soldnet/models/entities/user.dart';

part 'store_user.g.dart';
part 'store_user.freezed.dart';

@freezed
abstract class StoreUserModel with _$StoreUserModel {
  const factory StoreUserModel({
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

  Future<void> signUp(String email, String password) async {
    final response = await ref.read(
      requestSignUpProvider(
        body: BodySignUp(email: email, password: password),
      ).future,
    );
    if (!response.message.contains('success')) {
      state = state.copyWith(serverMessage: response.message);
      eraseServerMessage();
    } else {
      await signIn(email, password);
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
    final response = await ref.read(requestUsersAccountGetProvider.future);

    state = state.copyWith(user: response.user);
  }
}
