import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/models/utils/dialog_bg.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/app/animations/app_animations_fade_in_list.dart';
import 'package:soldnet/stores/store_chat.dart';

class ProfileBody extends ConsumerWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    final chatState = ref.watch(storeChatProvider);

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
            child: AppFadeInList<ProfileItem>(
              padding: EdgeInsets.zero,
              items: profileItems,
              itemBuilder: (context, item, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profileItems[index].value,
                      style: AppTextStyles.s16w500(color: AppColors.white),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      profileItems[index].label,
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

typedef ProfileItem = ({String label, String value});

List<ProfileItem> get profileItems => [
      (label: 'П.І.Б.', value: 'Чорний Олег Віталійовий'),
      (label: 'Військове Звання', value: 'Старший Солдат'),
      (label: 'Цивільна спеціальність', value: 'Філософ'),
      (label: 'Коло інтересів', value: 'Програмування')
    ];
