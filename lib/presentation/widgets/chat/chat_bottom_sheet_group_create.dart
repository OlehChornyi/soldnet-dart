import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/app/app_router.dart';
import 'package:soldnet/presentation/widgets/app/bottom_sheet/app_bottom_sheet.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_circle.dart';
import 'package:soldnet/presentation/widgets/app/textfield/app_text_field.dart';
import 'package:soldnet/presentation/widgets/chat/chat_bottom_sheet_users_item.dart';
import 'package:soldnet/stores/store_chat.dart';

void showChatBottomSheetGroupCreate() {
  showModalBottomSheet(
    isScrollControlled: true,
    context: Navigator.of(
      rootNavigatorKey.currentContext!,
      rootNavigator: true,
    ).context,
    builder: (context) {
      return ChatBottomSheetGroupCreate();
    },
  );
}

class ChatBottomSheetGroupCreate extends ConsumerStatefulWidget {
  const ChatBottomSheetGroupCreate({super.key});

  @override
  ConsumerState<ChatBottomSheetGroupCreate> createState() =>
      _ChatBottomSheetGroupCreateState();
}

class _ChatBottomSheetGroupCreateState
    extends ConsumerState<ChatBottomSheetGroupCreate> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  Future<void> _createGroup() async {}

  @override
  Widget build(BuildContext context) {
    final paddingBottom = MediaQuery.of(context).padding.bottom;
    final users = ref.watch(storeChatProvider.select((state) => state.users));

    return AppBottomSheet(
        header: 'Створити групу',
        subHeader: 'Всього в групі: ${users.length}',
        body: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            Row(
              children: [
                Expanded(
                  child: AppTextField(
                      controller: _controller,
                      focusNode: _focusNode,
                      isNotError: true,
                      hint: 'Назва групи тють'),
                ),
                const SizedBox(width: 8),
                AppButtonCircle(
                  onTap: _createGroup,
                  icon: Icons.group_add_rounded,
                ),
              ],
            ),
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
