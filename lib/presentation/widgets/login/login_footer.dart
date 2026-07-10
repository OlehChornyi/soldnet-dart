import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingBottom = MediaQuery.of(context).padding.bottom;

    return Column(
      children: [
        const SizedBox(height: 24),
        Text(
          'SoldNet',
          style: AppTextStyles.s16w400(color: AppColors.bgLight),
        ),
        const SizedBox(height: 8),
        Column(
          children: [
            for (int ind = 0; ind < 3; ind++) ...{
              if (ind != 3 && ind != 0) const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 3; i++) ...{
                    if (i != 3 && i != 0) const SizedBox(width: 8),
                    SvgPicture.asset(
                      'assets/icons/home/icon_${i + 1 + ind * 3}.svg',
                      colorFilter:
                          ColorFilter.mode(AppColors.bgLight, BlendMode.srcIn),
                    )
                  }
                ],
              )
            }
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Column(
          children: [
            for (int ind = 0; ind < 11; ind++) ...{
              if (ind != 11 && ind != 0) const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 3; i++) ...{
                    if (i != 3 && i != 0) const SizedBox(width: 8),
                    SvgPicture.asset(
                      'assets/icons/common/envelope.svg',
                      colorFilter: ColorFilter.mode(
                          AppColors.userMessage, BlendMode.srcIn),
                    )
                  }
                ],
              )
            }
          ],
        ),
        SizedBox(
          height: paddingBottom + 24,
        )
      ],
    );
  }
}
