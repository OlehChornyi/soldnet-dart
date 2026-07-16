import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/models/const/const_info.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';

class ChatBottomSheetUsersItem extends ConsumerWidget {
  final User user;

  const ChatBottomSheetUsersItem({super.key, required this.user});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        print('Selected user: ${user.name} (ID: ${user.id})');
        context.pop();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: AppColors.bg.withAlpha(50),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.active.withAlpha(100),
              foregroundImage: (user.avatarUrl?.isNotEmpty ?? false)
                  ? NetworkImage('${ConstInfo.baseUrl}${user.avatarUrl!}')
                  : null,
              child: Text((user.name ?? '')[0]),
            ),
            SizedBox(width: 12),
            Text(user.name ?? '', style: AppTextStyles.s16w500()),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Icon(Icons.person_add, size: 24, color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
