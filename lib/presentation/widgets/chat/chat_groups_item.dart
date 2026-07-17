import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/models/const/const_info.dart';
import 'package:soldnet/models/entities/conversation.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/stores/store_chat.dart';

class ChatGroupsItem extends ConsumerWidget {
  const ChatGroupsItem({super.key, required this.conversation});

  final Conversation conversation;

  String getAvatar(StoreChat chatNotifier) {
    return chatNotifier.getChatUserAvatarUrl(conversation.members);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    final chatNotifier = ref.read(storeChatProvider.notifier);

    return Container(
      width: screenWidth - 32,
      height: 88,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.bgLight,
      ),
      child: Row(
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white,
                image: getAvatar(chatNotifier).isEmpty
                    ? null
                    : DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            '${ConstInfo.baseUrl}${getAvatar(chatNotifier)}'))),
            child: getAvatar(chatNotifier).isNotEmpty
                ? null
                : Center(
                    child: Icon(
                      Icons.person_rounded,
                      size: 48,
                      color: AppColors.bgLight,
                    ),
                  ),
          ),
          const SizedBox(width: 12),
          SizedBox(
            width: screenWidth - 164,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  conversation.title,
                  style: AppTextStyles.s14w500(),
                ),
                const SizedBox(height: 4),
                Text(
                  chatNotifier.getConversationSubtitle(conversation.members),
                  style: AppTextStyles.s12w500(color: AppColors.grey120),
                ),
              ],
            ),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: AppColors.primary,
          )
        ],
      ),
    );
  }
}
