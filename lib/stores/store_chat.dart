import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:soldnet/models/entities/conversation.dart';
import 'package:soldnet/models/entities/message.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/models/utils/chat_tab.dart';
import 'package:soldnet/models/utils/dialog_bg.dart';
import 'package:soldnet/services/api/requests/request_conversations_create.dart';
import 'package:soldnet/services/api/requests/request_conversations_get.dart';
import 'package:soldnet/services/api/requests/request_conversations_messages_get.dart';
import 'package:soldnet/services/api/requests/request_user_all_get.dart';
import 'package:soldnet/services/ws/ws_chat.dart';
import 'package:uuid/v7.dart';

part 'store_chat.g.dart';
part 'store_chat.freezed.dart';

@freezed
abstract class StoreChatModel with _$StoreChatModel {
  const factory StoreChatModel({
    required String chatUserId,
    required ChatTab tab,
    required DialogBg dialogBg,
    required List<User> users,
    required List<Conversation> conversations,
    required Map<String, List<Message>> messagesByConversationId,
    required Conversation? selectedConversation,
  }) = _StoreChatModel;
}

@Riverpod(keepAlive: true)
class StoreChat extends _$StoreChat {
  @override
  StoreChatModel build() => StoreChatModel(
      chatUserId: '',
      tab: ChatTab.groups,
      dialogBg: DialogBg.leaves,
      users: [],
      conversations: [],
      messagesByConversationId: {},
      selectedConversation: null);

  void setChatUserId(String userId) {
    state = state.copyWith(chatUserId: userId);
  }

  Future<void> setSelectedConversation(Conversation conversation) async {
    state = state.copyWith(selectedConversation: conversation);

    final response = await ref.read(
        requestConversationsMessagesGetProvider(conversationId: conversation.id)
            .future);

    if (response.messages?.isNotEmpty ?? false) {
      Map<String, List<Message>> msgs = {...state.messagesByConversationId};
      msgs[conversation.id] = response.messages!;

      state = state.copyWith(messagesByConversationId: msgs);
    }
  }

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
      Map<String, List<Message>> messagesByConversationId =
          <String, List<Message>>{};
      messagesByConversationId
          .addEntries(response.conversations!.map((conversation) {
        return MapEntry(conversation.id, []);
      }));
      state = state.copyWith(
          conversations: response.conversations!,
          messagesByConversationId: messagesByConversationId);
    }
  }

  Future<void> createConversation(User chatUser) async {
    final members = [state.chatUserId, chatUser.id];
    final title = chatUser.name ?? 'Chat with user, id: ${chatUser.id}';

    final response = await ref.read(requestConversationsCreateProvider(
            body: BodyConversationsCreate(title: title, members: members))
        .future);

    if (response.conversation != null) {
      state = state.copyWith(
          conversations: [...state.conversations, response.conversation!]);
    }
  }

  String getChatUserAvatarUrl(List<String> members) {
    final chatUserId = members.firstWhere((m) => m != state.chatUserId);

    final chatUserAvatarUrl =
        state.users.firstWhere((u) => u.id == chatUserId).avatarUrl;

    return chatUserAvatarUrl ?? '';
  }

  String getConversationSubtitle(List<String> members) {
    if (members.length < 2) {
      return 'Кількість учасників [${members.length}]';
    } else {
      final chatUserId = members.firstWhere((m) => m != state.chatUserId);

      final chatUser = state.users.firstWhere((u) => u.id == chatUserId);

      return 'Звання [${chatUser.militaryRank}]\nЦивільна професія [${chatUser.civilProfession}]';
    }
  }

  void sendMessageToWs(String text) {
    final uuid = UuidV7().generate();

    if (state.selectedConversation != null) {
      final message = Message(
        id: uuid,
        conversationId: state.selectedConversation!.id,
        senderId: state.chatUserId,
        message: text,
        createdAt: DateTime.now().toUtc().toIso8601String(),
      );
      WsChat.sendMessage(message);
      addMessageToConversation(message);
    }
  }

  void handleMessageFromWs(Message message) {
    addMessageToConversation(message);
  }

  void addMessageToConversation(Message message) {
    final currentMessages =
        state.messagesByConversationId[message.conversationId] ?? [];
    final updatedMessages = [...currentMessages, message];

    state = state.copyWith(messagesByConversationId: {
      ...state.messagesByConversationId,
      message.conversationId: updatedMessages,
    });
  }
}
