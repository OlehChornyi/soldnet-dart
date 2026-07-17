import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/models/utils/chat_tab.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_fade.dart';
import 'package:soldnet/presentation/widgets/chat/chat_bottom_sheet_users.dart';
import 'package:soldnet/stores/store_chat.dart';

class ChatHeader extends ConsumerStatefulWidget {
  const ChatHeader({super.key});

  @override
  ConsumerState<ChatHeader> createState() => _ChatHeaderState();
}

class _ChatHeaderState extends ConsumerState<ChatHeader> {
  final flipController = FlipCardController();

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
              GestureDetector(
                onTap: () {
                  chatNotifier.getAllUsers();
                  showChatBottomSheetUsers();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_rounded,
                        color: AppColors.white,
                      ),
                      Text(
                        'Додати Чат',
                        style: AppTextStyles.s16w500(color: AppColors.white),
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                color: AppColors.white,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'У вас є 8 активних чатів',
                style: AppTextStyles.s16w500(color: AppColors.white),
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
                    'Павло Павленко',
                    style: AppTextStyles.s16w500(color: AppColors.white),
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    for (int i = 0; i < 3; i++) ...{
                      if (i > 0)
                        const SizedBox(
                          width: 4,
                        ),
                      Expanded(
                        child: AppButtonFade(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                              child: Icon(
                                _chatHeaderItems[i].icon,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    }
                  ],
                )
              ],
            )));
  }
}

typedef ChatHeaderItem = ({IconData icon, Function() onTap});

List<ChatHeaderItem> get _chatHeaderItems => [
      (icon: Icons.call, onTap: () {}),
      (icon: Icons.video_chat, onTap: () {}),
      (icon: Icons.attach_file_rounded, onTap: () {})
    ];
