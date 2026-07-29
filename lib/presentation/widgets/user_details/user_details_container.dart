import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/app/app_router.dart';
import 'package:soldnet/models/const/const_info.dart';
import 'package:soldnet/models/utils/chat_tab.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_action.dart';
import 'package:soldnet/stores/store_chat.dart';
import 'package:soldnet/stores/store_search.dart';

class UserDetailsContainer extends ConsumerWidget {
  const UserDetailsContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paddingTop = MediaQuery.of(context).padding.top;

    final searchState = ref.watch(storeSearchProvider);
    final chatState = ref.watch(storeChatProvider);
    final chatNotifier = ref.read(storeChatProvider.notifier);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: paddingTop + 8),
            GestureDetector(
              onTap: () => context.pop(),
              child: Icon(Icons.arrow_back_ios_new_rounded),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 108,
                height: 108,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary,
                    image: searchState.selectedUser?.avatarUrl?.isEmpty ?? true
                        ? null
                        : DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                '${ConstInfo.baseUrl}${searchState.selectedUser?.avatarUrl}'))),
                child: searchState.selectedUser?.avatarUrl?.isNotEmpty ?? false
                    ? null
                    : Center(
                        child: Icon(
                          Icons.person_rounded,
                          size: 64,
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 8),
            Align(
                alignment: Alignment.topCenter,
                child: Text(
                  searchState.selectedUser?.name ?? '',
                  style: AppTextStyles.s20w600(color: AppColors.white),
                )),
            const SizedBox(height: 4),
            Align(
                alignment: Alignment.topCenter,
                child: Text(
                  searchState.selectedUser?.email ?? '',
                  style: AppTextStyles.s14w500(color: AppColors.grey120),
                )),
            const Divider(
              height: 32,
              color: AppColors.primary,
            ),
            Text(
              'Звання: ${searchState.selectedUser?.militaryRank ?? ''}',
              style: AppTextStyles.s16w500(color: AppColors.white),
            ),
            const SizedBox(height: 8),
            Text(
              'Професія: ${searchState.selectedUser?.civilProfession ?? ''}',
              style: AppTextStyles.s16w500(color: AppColors.white),
            ),
            const SizedBox(height: 8),
            Text(
              'Захоплення: ${searchState.selectedUser?.interests.toString() ?? ''}',
              style: AppTextStyles.s16w500(color: AppColors.white),
            ),
            const Divider(
              height: 32,
              color: AppColors.primary,
            ),
            AppButtonAction(
                text: searchState.usersAlreadyAddedToSingleChats
                        .contains(searchState.selectedUser?.id ?? '')
                    ? 'Відкрити чат'
                    : 'Розпочати чат',
                buttonColor: searchState.usersAlreadyAddedToSingleChats
                        .contains(searchState.selectedUser?.id ?? '')
                    ? AppColors.grey120
                    : null,
                onTap: () async {
                  if (searchState.usersAlreadyAddedToSingleChats
                      .contains(searchState.selectedUser?.id ?? '')) {
                    print('sdfsdf');
                    final conversation = chatNotifier
                        .findConversationByUser(searchState.selectedUser!);
                    context.go(ScreenPaths.chat);
                    chatNotifier.setSelectedConversation(conversation);
                    chatNotifier.setTab(ChatTab.dialog);
                  } else {
                    //create conversation
                    final conversation = await chatNotifier.createConversation(
                        title: '',
                        members: [searchState.selectedUser?.id ?? '']);
                    if (conversation != null) {
                      if (!context.mounted) return;
                      context.go(ScreenPaths.chat);
                      chatNotifier.setSelectedConversation(conversation);
                      chatNotifier.setTab(ChatTab.dialog);
                    }
                  }
                })
          ],
        ),
      ),
    );
  }
}
