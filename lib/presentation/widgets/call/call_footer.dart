import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_circle.dart';

class CallFooter extends StatelessWidget {
  const CallFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final paddingBottom = MediaQuery.of(context).padding.bottom;

    return Container(
      width: screenWidth,
      height: paddingBottom + 54,
      color: AppColors.black,
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppButtonCircle(
              onTap: () {},
              icon: Icons.mic_rounded,
              buttonColor: AppColors.grey120,
              iconColor: AppColors.white,
            ),
            const SizedBox(width: 12),
            AppButtonCircle(
              onTap: () {},
              icon: Icons.videocam_rounded,
              buttonColor: AppColors.grey120,
              iconColor: AppColors.white,
            ),
            const SizedBox(width: 84),
            AppButtonCircle(
              onTap: () => context.pop(),
              icon: Icons.close_rounded,
              buttonColor: AppColors.error,
              iconColor: AppColors.white,
            )
          ],
        ),
      ),
    );
  }
}
