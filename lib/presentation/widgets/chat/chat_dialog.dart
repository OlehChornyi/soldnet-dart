import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/models/utils/dialog_bg.dart';
import 'package:soldnet/presentation/widgets/chat/chat_dialog_message.dart';
import 'package:soldnet/stores/store_chat.dart';

class ChatDialog extends ConsumerStatefulWidget {
  const ChatDialog({super.key});

  @override
  ConsumerState<ChatDialog> createState() => _ChatDialogState();
}

class _ChatDialogState extends ConsumerState<ChatDialog> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToLastMessage() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final chatState = ref.watch(storeChatProvider);
    final userId = chatState.chatUserId;
    final conversationId = chatState.selectedConversation?.id ?? '';
    final messages = chatState.messagesByConversationId[conversationId] ?? [];

    ref.listen(storeChatProvider, (_, next) {
      _scrollToLastMessage();
    });

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
          // physics: ClampingScrollPhysics(),
          controller: _scrollController,
          separatorBuilder: (context, index) => const SizedBox(
            height: 8,
          ),
          itemBuilder: (context, index) {
            return ChatDialogMessage(
                message: messages[index],
                isUser: messages[index].senderId == userId);
          },
        ));
  }
}
