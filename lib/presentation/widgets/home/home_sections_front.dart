import 'package:flutter/material.dart';
import 'package:soldnet/models/data/home_sections.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class HomeSectionsFront extends StatelessWidget {
  const HomeSectionsFront({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth - 32,
      height: (screenWidth - 32) / 4,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image:
              DecorationImage(image: AssetImage(homeSections[index].bgImage))),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: AppColors.black.withAlpha(150),
              borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Icon(
              Icons.ads_click,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
