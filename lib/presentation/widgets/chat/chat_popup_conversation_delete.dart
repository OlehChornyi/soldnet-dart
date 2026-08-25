import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/models/entities/conversation.dart';
import 'package:soldnet/presentation/widgets/app/popup/app_popup.dart';
import 'package:soldnet/stores/store_chat.dart';

class ChatPopupConversationDelete extends ConsumerWidget {
  const ChatPopupConversationDelete({super.key, required this.conversation});

  final Conversation conversation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatNotifier = ref.read(storeChatProvider.notifier);

    return AppPopup(
        title: 'Видалити чат',
        subTitle: 'Чат буде перманентно видалено для всіх користувачів',
        onTap: () => chatNotifier.conversationDelete(conversation));
  }
}
