import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:soldnet/models/entities/attachment.dart';
import 'package:soldnet/models/entities/conversation.dart';
import 'package:soldnet/models/entities/message.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/models/utils/chat_tab.dart';
import 'package:soldnet/models/utils/dialog_bg.dart';
import 'package:soldnet/models/utils/message_type.dart';
import 'package:soldnet/services/api/requests/request_attachments_upload.dart';
import 'package:soldnet/services/api/requests/request_conversations_create.dart';
import 'package:soldnet/services/api/requests/request_conversations_get.dart';
import 'package:soldnet/services/api/requests/request_conversations_messages_get.dart';
import 'package:soldnet/services/ws/ws_chat.dart';
import 'package:soldnet/stores/store_search.dart';
import 'package:uuid/v7.dart';

part 'store_chat.g.dart';
part 'store_chat.freezed.dart';

@freezed
abstract class StoreChatModel with _$StoreChatModel {
  const factory StoreChatModel(
      {required String chatUserId,
      required ChatTab tab,
      required DialogBg dialogBg,
      required List<Conversation> conversations,
      required Map<String, List<Message>> messagesByConversationId,
      required Conversation? selectedConversation,
      required List<Object> filesToUpload}) = _StoreChatModel;
}

@Riverpod(keepAlive: true)
class StoreChat extends _$StoreChat {
  @override
  StoreChatModel build() => StoreChatModel(
      chatUserId: '',
      tab: ChatTab.groups,
      dialogBg: DialogBg.leaves,
      conversations: [],
      messagesByConversationId: {},
      selectedConversation: null,
      filesToUpload: []);

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
        messagesByConversationId: messagesByConversationId,
      );

      List<Conversation> cnvrs = [...response.conversations!];
      List<String> ids = [];

      for (var c in cnvrs) {
        if (c.members.length == 2) {
          for (var m in c.members) {
            if (m != state.chatUserId) {
              ids.add(m);
            }
          }
        }
      }

      ref
          .read(storeSearchProvider.notifier)
          .setUsersAlreadyAddedToSingleChats(ids);
    }
  }

  Future<Conversation?> createConversation(
      {required String title, required List<String> members}) async {
    final membersWithUser = [state.chatUserId, ...members];
    final actualTitle = title.isEmpty ? "User" : title;

    final response = await ref.read(requestConversationsCreateProvider(
            body: BodyConversationsCreate(
                title: actualTitle, members: membersWithUser))
        .future);

    if (response.conversation != null) {
      state = state.copyWith(
        conversations: [...state.conversations, response.conversation!],
      );

      getAllUserConversations();
      return response.conversation;
    }
    return null;
  }

  String getChatAvatarUrl(List<String> members) {
    final chatUserId = members.firstWhere((m) => m != state.chatUserId);
    final users = ref.read(storeSearchProvider).users;

    final chatUserAvatarUrl =
        users.firstWhere((u) => u.id == chatUserId).avatarUrl;

    return chatUserAvatarUrl ?? '';
  }

  User getAnotherUser(List<String> members) {
    final anotherUserId = members.firstWhere((m) => m != state.chatUserId);
    final users = ref.read(storeSearchProvider).users;

    final anotherUser = users.firstWhere((u) => u.id == anotherUserId);
    return anotherUser;
  }

  String getConversationTitle(Conversation conversation) {
    if (conversation.members.length > 2) {
      return conversation.title;
    } else {
      final anotherUser = getAnotherUser(conversation.members);
      return '${anotherUser.name}';
    }
  }

  String getConversationSubtitle(List<String> members) {
    if (members.length > 2) {
      return 'Кількість учасників [${members.length}]';
    } else {
      final anotherUser = getAnotherUser(members);
      return 'Звання [${anotherUser.militaryRank}]\nЦивільна професія [${anotherUser.civilProfession}]';
    }
  }

  Future<List<Attachment>> _createAttachments() async {
    List<Attachment> atchs = [];

    for (var file in state.filesToUpload) {
      File? fileToUpload;
      String mimeType = '';

      if (file is XFile) {
        fileToUpload = File(file.path);
        mimeType = file.mimeType ?? '';
        print('😉 type: $mimeType');
      } else if (file is PlatformFile) {
        fileToUpload = File(file.path ?? '');
        mimeType = file.xFile.mimeType ?? '';
        print('😉 type: $mimeType');
      }
      print('😉 type: $mimeType');
      if (fileToUpload != null) {
        final response = await ref.read(requestAttachmentsUploadProvider(
                file: fileToUpload, mimeType: mimeType)
            .future);

        if (response.attachment != null) {
          atchs.add(response.attachment!);
        }
      }
    }
    return atchs;
  }

  void sendMessageTextToWs(String text) async {
    final messageId = UuidV7().generate();

    if (state.selectedConversation != null) {
      List<Attachment> atchs = [];

      if (state.filesToUpload.isNotEmpty) {
        atchs = await _createAttachments();
      }

      final message = Message(
        id: messageId,
        conversationId: state.selectedConversation!.id,
        senderId: state.chatUserId,
        type: MessageType.text,
        message: text,
        attachments: atchs,
        createdAt: DateTime.now().toUtc().toIso8601String(),
      );
      ref.read(wsChatProvider.notifier).sendMessage(message);
      setFilesToUpload([]);
      addMessageToConversation(message);
    }
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

  Conversation findConversationByUser(User user) {
    final conversations = [
      ...state.conversations.where((c) => c.members.length == 2)
    ];

    return conversations.firstWhere((c) => c.members.contains(user.id));
  }

  void setFilesToUpload(List<Object> files) {
    state = state.copyWith(filesToUpload: files);
  }
}
