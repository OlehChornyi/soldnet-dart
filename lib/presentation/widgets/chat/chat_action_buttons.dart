import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/models/utils/chat_tab.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_fade.dart';
import 'package:soldnet/stores/store_chat.dart';

class ChatActionButtons extends ConsumerWidget {
  const ChatActionButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatState = ref.watch(storeChatProvider);
    final chatNotifier = ref.read(storeChatProvider.notifier);

    return Column(
      children: [
        AppButtonFade(
          onTap: () => chatNotifier.setTab(ChatTab.groups),
          child: Container(
            width: 52,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: chatState.tab == ChatTab.groups
                  ? AppColors.action1Active
                  : AppColors.action1,
            ),
            child: Center(
                child: Icon(
              Icons.group_rounded,
              color: chatState.tab == ChatTab.groups
                  ? AppColors.white
                  : AppColors.grey170,
            )),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        AppButtonFade(
          onTap: () => chatNotifier.setTab(ChatTab.dialog),
          child: Container(
            width: 52,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: chatState.tab != ChatTab.groups
                  ? AppColors.action2Active
                  : AppColors.action2,
            ),
            child: Center(
                child: Icon(
              Icons.chat_rounded,
              color: chatState.tab != ChatTab.groups
                  ? AppColors.white
                  : AppColors.grey170,
            )),
          ),
        ),
      ],
    );
  }
}
