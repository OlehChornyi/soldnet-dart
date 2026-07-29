import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_fade.dart';

class SearchBottomSheetItem extends StatelessWidget {
  const SearchBottomSheetItem({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AppButtonFade(
      onTap: () {},
      child: Container(
        height: 32,
        width: screenWidth - 32,
        decoration: BoxDecoration(
            color: AppColors.primary, borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
