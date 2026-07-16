import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/models/utils/chat_tab.dart';
import 'package:soldnet/models/utils/dialog_bg.dart';
import 'package:soldnet/services/api/requests/request_user_all_get.dart';

part 'store_chat.g.dart';
part 'store_chat.freezed.dart';

@freezed
abstract class StoreChatModel with _$StoreChatModel {
  const factory StoreChatModel({
    required ChatTab tab,
    required List<String> chatGroups,
    required DialogBg dialogBg,
    required List<User> users,
  }) = _StoreChatModel;
}

@Riverpod(keepAlive: true)
class StoreChat extends _$StoreChat {
  @override
  StoreChatModel build() => StoreChatModel(
      tab: ChatTab.groups,
      chatGroups: [],
      dialogBg: DialogBg.leaves,
      users: []);

  void setTab(ChatTab tab) {
    state = state.copyWith(tab: tab);
  }

  void setDialogBg(DialogBg bg) {
    state = state.copyWith(dialogBg: bg);
  }

  void getAllUsers() async {
    // if (state.users.isNotEmpty) return;

    final response = await ref.read(requestUserAllGetProvider.future);

    state = state.copyWith(users: response.users ?? []);
  }
}
