import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soldnet/models/data/home_sections.dart';
import 'package:soldnet/models/utils/home_tab.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/stores/store_home.dart';

class HomeSectionsBack extends ConsumerWidget {
  const HomeSectionsBack({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    final homeNotifier = ref.read(storeHomeProvider.notifier);

    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! < 0) {
          homeNotifier.setSelectedSection(homeSections[index]);
          homeNotifier.setTab(HomeTab.details);
        }
      },
      child: Container(
        width: screenWidth - 32,
        height: (screenWidth - 32) / 4,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.black,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/general/mg.svg'),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenWidth - 104,
                      child: Text(
                        homeSections[index].label,
                        style: AppTextStyles.s20w600(color: AppColors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      '[свайпніть ліворуч]',
                      style: AppTextStyles.s12w500(color: AppColors.grey170),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
