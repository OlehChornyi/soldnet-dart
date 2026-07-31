import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/presentation/widgets/chat/chat_groups_item.dart';
import 'package:soldnet/presentation/widgets/chat/chat_groups_placeholder.dart';
import 'package:soldnet/stores/store_chat.dart';

class ChatGroups extends ConsumerWidget {
  const ChatGroups({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paddingBottom = MediaQuery.of(context).padding.bottom;

    final chatState = ref.watch(storeChatProvider);

    return chatState.conversations.isEmpty
        ? ChatGroupsPlaceholder()
        : ListView.separated(
            itemCount: chatState.conversations.length,
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            padding: EdgeInsets.only(bottom: paddingBottom + 8),
            itemBuilder: (context, index) {
              return ChatGroupsItem(
                conversation: chatState.conversations[index],
              );
            },
          );
  }
}
