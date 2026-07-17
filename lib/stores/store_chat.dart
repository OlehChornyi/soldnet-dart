import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:soldnet/models/entities/conversation.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/models/utils/chat_tab.dart';
import 'package:soldnet/models/utils/dialog_bg.dart';
import 'package:soldnet/services/api/requests/request_conversations_create.dart';
import 'package:soldnet/services/api/requests/request_conversations_get.dart';
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
    required List<Conversation> conversations,
  }) = _StoreChatModel;
}

@Riverpod(keepAlive: true)
class StoreChat extends _$StoreChat {
  @override
  StoreChatModel build() => StoreChatModel(
      tab: ChatTab.groups,
      chatGroups: [],
      dialogBg: DialogBg.leaves,
      users: [],
      conversations: []);

  void setTab(ChatTab tab) {
    state = state.copyWith(tab: tab);
  }

  void setDialogBg(DialogBg bg) {
    state = state.copyWith(dialogBg: bg);
  }

  Future<void> getAllUsers() async {
    //TODO: change this into search
    // if (state.users.isNotEmpty) return;

    final response = await ref.read(requestUserAllGetProvider.future);

    state = state.copyWith(users: response.users ?? []);
  }

  Future<void> getAllUserConversations() async {
    final response = await ref.read(requestConversationsGetProvider.future);

    if (response.conversations != null) {
      state = state.copyWith(conversations: response.conversations!);
    }
  }

  Future<void> createConversation(BodyConversationsCreate body) async {
    final response =
        await ref.read(requestConversationsCreateProvider(body: body).future);

    if (response.conversation != null) {
      state = state.copyWith(
          conversations: [...state.conversations, response.conversation!]);
    }
  }
}
