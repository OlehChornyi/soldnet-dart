import 'package:flutter/material.dart';
import 'package:soldnet/models/data/home_sections.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';

class HomeDetailsItem extends StatelessWidget {
  const HomeDetailsItem({super.key, required this.detail});

  final SectionDetail detail;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          // color: AppColors.white.withAlpha(150),
          border: Border.all(
            width: 1,
            color: AppColors.black,
          ),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: screenWidth - 32,
            constraints: BoxConstraints(minHeight: 40),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(2),
                    topRight: Radius.circular(10))),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                detail.label,
                textAlign: TextAlign.left,
                style: AppTextStyles.s16w700(color: AppColors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              detail.description,
              textAlign: TextAlign.left,
              style: AppTextStyles.s12w500(color: AppColors.grey50),
            ),
          ),
        ],
      ),
    );
  }
}
