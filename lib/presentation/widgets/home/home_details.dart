import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/stores/store_home.dart';

class HomeDetails extends ConsumerWidget {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paddingTop = MediaQuery.of(context).padding.top;

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
                color: AppColors.black,
                borderRadius: BorderRadius.circular(12)),
            child: Text(
              homeState.selectedSection?.label ?? '',
              style: AppTextStyles.s20w600(color: AppColors.white),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
