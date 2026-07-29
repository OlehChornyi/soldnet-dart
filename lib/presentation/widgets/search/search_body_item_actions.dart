import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/app/app_router.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/models/utils/chat_tab.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_circle.dart';
import 'package:soldnet/stores/store_chat.dart';
import 'package:soldnet/stores/store_search.dart';

class SearchBodyItemActions extends ConsumerWidget {
  const SearchBodyItemActions({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchState = ref.watch(storeSearchProvider);
    final searchNotifier = ref.read(storeSearchProvider.notifier);
    final chatNotifier = ref.read(storeChatProvider.notifier);

    final isConversationCreated =
        searchState.usersAlreadyAddedToSingleChats.contains(user.id);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AppButtonCircle(
          onTap: () {
            searchNotifier.setSelectedUser(user);
            context.push(ScreenPaths.userDetails);
          },
          icon: Icons.info_rounded,
          iconSize: 20,
          buttonSize: 32,
          buttonColor: AppColors.action3,
          iconColor: AppColors.white,
        ),
        const SizedBox(width: 8),
        AppButtonCircle(
          onTap: () async {
            final conversation = await chatNotifier
                .createConversation(title: '', members: [user.id]);
            if (conversation != null) {
              if (!context.mounted) return;
              context.go(ScreenPaths.chat);
              chatNotifier.setSelectedConversation(conversation);
              chatNotifier.setTab(ChatTab.dialog);
            }
          },
          icon: Icons.send_rounded,
          iconSize: 20,
          buttonSize: 32,
          buttonColor: !isConversationCreated
              ? AppColors.activeBrown
              : AppColors.grey220,
          iconColor:
              !isConversationCreated ? AppColors.primary : AppColors.grey170,
        ),
      ],
    );
  }
}
