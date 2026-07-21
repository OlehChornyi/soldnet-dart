import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:soldnet/models/entities/conversation.dart';
import 'package:soldnet/models/entities/message.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/models/utils/chat_tab.dart';
import 'package:soldnet/models/utils/dialog_bg.dart';
import 'package:soldnet/services/api/requests/request_conversations_create.dart';
import 'package:soldnet/services/api/requests/request_conversations_get.dart';
import 'package:soldnet/services/api/requests/request_user_all_get.dart';
import 'package:soldnet/stores/store_user.dart';

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
    required Map<int, List<Message>> messagesByConversationId,
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
      conversations: [],
      messagesByConversationId: {});

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
      Map<int, List<Message>> messagesByConversationId = <int, List<Message>>{};
      messagesByConversationId
          .addEntries(response.conversations!.map((conversation) {
        return MapEntry(conversation.id, []);
      }));
      state = state.copyWith(conversations: response.conversations!);
    }
  }

  Future<void> createConversation(User chatUser) async {
    final currentUserId = ref.read(storeUserProvider).user?.id ?? 0;
    final members = [currentUserId, chatUser.id];
    final title = chatUser.name ?? 'Chat with user, id: ${chatUser.id}';

    final response = await ref.read(requestConversationsCreateProvider(
            body: BodyConversationsCreate(title: title, members: members))
        .future);

    if (response.conversation != null) {
      state = state.copyWith(
          conversations: [...state.conversations, response.conversation!]);
    }
  }

  String getChatUserAvatarUrl(List<int> members) {
    final currentUserId = ref.read(storeUserProvider).user?.id ?? 0;
    final chatUserId = members.firstWhere((m) => m != currentUserId);

    final chatUserAvatarUrl =
        state.users.firstWhere((u) => u.id == chatUserId).avatarUrl;

    return chatUserAvatarUrl ?? '';
  }

  String getConversationSubtitle(List<int> members) {
    if (members.length < 2) {
      return 'Кількість учасників [${members.length}]';
    } else {
      final currentUserId = ref.read(storeUserProvider).user?.id ?? 0;
      final chatUserId = members.firstWhere((m) => m != currentUserId);

      final chatUser = state.users.firstWhere((u) => u.id == chatUserId);

      return 'Звання [${chatUser.militaryRank}]\nЦивільна професія [${chatUser.civilProfession}]';
    }
  }
}
