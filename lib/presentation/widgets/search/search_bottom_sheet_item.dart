import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_fade.dart';

class SearchBottomSheetItem extends StatelessWidget {
  const SearchBottomSheetItem(
      {super.key,
      required this.name,
      required this.isSeltcted,
      required this.onTap});

  final String name;
  final bool isSeltcted;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AppButtonFade(
      onTap: onTap,
      child: Container(
        height: 32,
        width: screenWidth - 32,
        decoration: BoxDecoration(
            color: isSeltcted ? AppColors.action2 : AppColors.primary,
            borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            name,
            style: AppTextStyles.s14w500(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
