import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/app/app_router.dart';
import 'package:soldnet/models/utils/chat_tab.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/chat/chat_bottom_sheet_group_create.dart';
import 'package:soldnet/presentation/widgets/chat/chat_bottom_sheet_users.dart';
import 'package:soldnet/presentation/widgets/chat/chat_header_button.dart';
import 'package:soldnet/presentation/widgets/chat/chat_popup_upload.dart';
import 'package:soldnet/stores/store_chat.dart';

class ChatHeader extends ConsumerStatefulWidget {
  const ChatHeader({super.key});

  @override
  ConsumerState<ChatHeader> createState() => _ChatHeaderState();
}

class _ChatHeaderState extends ConsumerState<ChatHeader> {
  final flipController = FlipCardController();

  void _makeVoiceCall(BuildContext context) {
    context.push(ScreenPaths.call);
  }

  void _makeVideoCall(BuildContext context) {
    context.push(ScreenPaths.call);
  }

  Future<void> _uploadFile() async {
    showDialog(
        context: context,
        builder: (context) {
          return ChatPopupUpload();
        });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      storeChatProvider.select((state) => state.tab),
      (previous, next) {
        if (next == ChatTab.groups &&
            !(flipController.state?.isFront ?? true)) {
          flipController.toggleCard();
        }

        if (next == ChatTab.dialog &&
            (flipController.state?.isFront ?? false)) {
          flipController.toggleCard();
        }
      },
    );
    final chatState = ref.watch(storeChatProvider);
    final chatNotifier = ref.read(storeChatProvider.notifier);

    final numberOfActiveChats = chatState.conversations.length;

    return FlipCard(
        side: chatState.tab == ChatTab.groups ? CardSide.FRONT : CardSide.BACK,
        flipOnTouch: false,
        controller: flipController,
        front: Container(
          width: MediaQuery.of(context).size.width - 92,
          height: 106,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.active,
          ),
          child: Center(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChatHeaderButton(
                        onTap: () => showChatBottomSheetUsers(),
                        icon: Icons.person_add_rounded),
                    const SizedBox(width: 8),
                    ChatHeaderButton(
                        onTap: () => showChatBottomSheetGroupCreate(),
                        icon: Icons.group_add_rounded)
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  numberOfActiveChats == 1
                      ? 'У вас є 1 активний чат'
                      : 'У вас є $numberOfActiveChats активних чати',
                  style: AppTextStyles.s16w500(color: AppColors.white),
                ),
              )
            ],
          )),
        ),
        back: Container(
            width: MediaQuery.of(context).size.width - 92,
            height: 106,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.active,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    chatState.selectedConversation == null
                        ? ''
                        : chatNotifier.getConversationTitle(
                            chatState.selectedConversation!),
                    style: AppTextStyles.s16w500(color: AppColors.white),
                  ),
                ),
                Spacer(),
                Row(
                  spacing: 4,
                  children: [
                    ChatHeaderButton(
                      onTap: () => _makeVoiceCall(context),
                      icon: Icons.call,
                    ),
                    ChatHeaderButton(
                      onTap: () => _makeVideoCall(context),
                      icon: Icons.video_chat,
                    ),
                    ChatHeaderButton(
                      onTap: () => _uploadFile(),
                      icon: Icons.attach_file_rounded,
                    )
                  ],
                )
              ],
            )));
  }
}
