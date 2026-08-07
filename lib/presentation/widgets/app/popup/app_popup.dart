import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_action.dart';

class AppPopup extends StatelessWidget {
  const AppPopup(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.onTap});

  final String title;
  final String subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: AppTextStyles.s16w700(color: AppColors.error)),
            const SizedBox(height: 16),
            Text(subTitle,
                style: AppTextStyles.s14w500(color: AppColors.black)
                    .copyWith(height: 1.2)),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: AppButtonAction(
                    text: 'Видалити',
                    onTap: onTap,
                    buttonColor: AppColors.error,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: AppButtonAction(
                    text: ' Скасувати',
                    onTap: () => context.pop(),
                    buttonColor: AppColors.active,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
