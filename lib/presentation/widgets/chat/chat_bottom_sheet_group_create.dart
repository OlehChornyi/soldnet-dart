import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/app/app_router.dart';
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

class ChatBottomSheetGroupCreate extends ConsumerWidget {
  const ChatBottomSheetGroupCreate({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paddingBottom = MediaQuery.of(context).padding.bottom;
    final users = ref.watch(storeChatProvider.select((state) => state.users));

    return Container();
  }
}
