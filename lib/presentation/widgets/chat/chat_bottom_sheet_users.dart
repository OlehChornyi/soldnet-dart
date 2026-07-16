import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/app/app_router.dart';
import 'package:soldnet/presentation/widgets/app/bottom_sheet/app_bottom_sheet.dart';
import 'package:soldnet/presentation/widgets/chat/chat_bottom_sheet_users_item.dart';
import 'package:soldnet/stores/store_chat.dart';

void showChatBottomSheetUsers() {
  showModalBottomSheet(
    isScrollControlled: true,
    context: Navigator.of(
      rootNavigatorKey.currentContext!,
      rootNavigator: true,
    ).context,
    builder: (context) {
      return ChatBottomSheetUsers();
    },
  );
}

class ChatBottomSheetUsers extends ConsumerWidget {
  const ChatBottomSheetUsers({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paddingBottom = MediaQuery.of(context).padding.bottom;
    final users = ref.watch(storeChatProvider.select((state) => state.users));

    return AppBottomSheet(
        header: 'Оберіть співрозмовника',
        subHeader: 'Всього користувачів: ${users.length}',
        body: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            if (users.isNotEmpty) ...{
              ...users.map((user) => ChatBottomSheetUsersItem(user: user))
            } else
              const SizedBox(
                height: 200,
                child: Center(
                  child: Text('Користувачів не знайдено'),
                ),
              ),
            SizedBox(height: paddingBottom + 16),
          ],
        ));
  }
}
