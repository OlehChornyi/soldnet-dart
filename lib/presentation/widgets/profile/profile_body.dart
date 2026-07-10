import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/models/utils/dialog_bg.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/app/animations/app_animations_fade_in_list.dart';
import 'package:soldnet/stores/store_chat.dart';
import 'package:soldnet/stores/store_user.dart';

class ProfileBody extends ConsumerWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    final chatState = ref.watch(storeChatProvider);
    final userState = ref.watch(storeUserProvider);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 16),
        Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.primary),
              child: Center(
                child: Icon(
                  Icons.person_rounded,
                  size: 64,
                  color: AppColors.bg,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                    image:
                        AssetImage(getDataDialogBg(chatState.dialogBg).front)),
              ),
            )
          ],
        ),
        const SizedBox(width: 12),
        Container(
            width: screenWidth - 144,
            constraints: BoxConstraints(minHeight: 100),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(12)),
            child: AppFadeInList<String>(
              padding: EdgeInsets.zero,
              items: profileBodyItems,
              itemBuilder: (context, item, index) {
                // Map<String, String> items = {
                //   for (var item in profileBodyItems) item: '',
                // };
                // items['Електронна пошта'] = userState.user?.email ?? '';

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      index == 0
                          ? (userState.user?.name ?? '')
                          : index == 1
                              ? (userState.user?.email ?? '')
                              : index == 2
                                  ? (userState.user?.militaryRank ?? '')
                                  : index == 3
                                      ? (userState.user?.civilProfession ?? '')
                                      : index == 4
                                          ? (userState.user?.interests
                                                  .toString() ??
                                              '')
                                          : '',
                      style: AppTextStyles.s16w500(color: AppColors.white),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      profileBodyItems[index],
                      style: AppTextStyles.s12w500(color: AppColors.bg),
                    ),
                  ],
                );
              },
            )),
      ],
    );
  }
}

List<String> get profileBodyItems => [
      'П.І.Б.',
      'Електронна пошта',
      'Військове звання',
      'Цивільна спеціальність',
      'Коло інтересів'
    ];
