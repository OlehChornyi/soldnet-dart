import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';

class ProfileFooterItem extends StatelessWidget {
  const ProfileFooterItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap,
      this.contentColor});

  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final Color? contentColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: AppColors.bgLight,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppTextStyles.s16w500(
                    color: contentColor ?? AppColors.primary),
              ),
              const SizedBox(width: 8),
              Icon(icon, color: contentColor ?? AppColors.primary),
            ],
          ),
        ));
  }
}
