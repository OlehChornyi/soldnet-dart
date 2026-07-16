import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/app/app_router.dart';
import 'package:soldnet/presentation/widgets/app/bottom_sheet/app_bottom_sheet.dart';

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
    return AppBottomSheet(
      header: 'Оберіть співрозмовника',
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 400,
            child: Center(
              child: Text('Chat Bottom Sheet Users'),
            ),
          ),
        ],
      ),
    );
  }
}
