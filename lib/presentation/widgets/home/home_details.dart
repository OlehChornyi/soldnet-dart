import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/home/home_details_item.dart';
import 'package:soldnet/stores/store_home.dart';

class HomeDetails extends ConsumerWidget {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paddingTop = MediaQuery.of(context).padding.top;
    final paddingBottom = MediaQuery.of(context).padding.bottom;

    final homeState = ref.watch(storeHomeProvider);

    return Column(
      children: [
        SizedBox(
          height: paddingTop,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                Text(
                  homeState.selectedSection?.label ?? '',
                  style: AppTextStyles.s20w600(color: AppColors.bgLight),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 9; i++) ...{
                      if (i != 9) const SizedBox(width: 8),
                      SvgPicture.asset(
                        'assets/icons/home/icon_${i + 1}.svg',
                        colorFilter: ColorFilter.mode(
                            AppColors.bgLight, BlendMode.srcIn),
                      )
                    }
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.fromLTRB(16, 0, 16, paddingBottom + 64),
            itemCount: homeState.selectedSection?.details.length ?? 0,
            separatorBuilder: (context, index) => const SizedBox(
              height: 8,
            ),
            itemBuilder: (context, index) {
              return homeState.selectedSection == null
                  ? SizedBox.shrink()
                  : HomeDetailsItem(
                      detail: homeState.selectedSection!.details[index]);
            },
          ),
        )
      ],
    );
  }
}
