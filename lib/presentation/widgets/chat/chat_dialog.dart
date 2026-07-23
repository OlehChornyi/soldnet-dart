import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/models/utils/dialog_bg.dart';
import 'package:soldnet/presentation/widgets/chat/chat_dialog_message.dart';
import 'package:soldnet/stores/store_chat.dart';

class ChatDialog extends ConsumerWidget {
  const ChatDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    final chatState = ref.watch(storeChatProvider);
    final userId = chatState.chatUserId;
    final conversationId = chatState.selectedConversation?.id ?? '';
    final messages = chatState.messagesByConversationId[conversationId] ?? [];

    return Container(
        width: screenWidth - 32,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
          // color: AppColors.bgLight,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
              image: AssetImage(getDataDialogBg(chatState.dialogBg).bg),
              fit: BoxFit.cover),
        ),
        child: ListView.separated(
          itemCount: messages.length,
          padding: EdgeInsets.zero,
          separatorBuilder: (context, index) => const SizedBox(
            height: 8,
          ),
          itemBuilder: (context, index) {
            return ChatDialogMessage(
                text: messages[index].message,
                isUser: messages[index].senderId == userId);
          },
        ));
  }
}
