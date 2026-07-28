import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soldnet/models/const/const_info.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/search/search_body_item_avatar.dart';

class SearchBodyItem extends StatelessWidget {
  const SearchBodyItem({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth - 32,
      constraints: BoxConstraints(minHeight: 100),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBodyItemAvatar(user: user),
              const SizedBox(width: 8),
              SizedBox(
                width: screenWidth - 136,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.name ?? '',
                      style: AppTextStyles.s16w700(color: AppColors.primary),
                    ),
                    const Divider(color: AppColors.primary),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/search/helmet.svg',
                          colorFilter: ColorFilter.mode(
                              AppColors.primary, BlendMode.srcIn),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          user.militaryRank ?? '',
                          style: AppTextStyles.s16w400(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/search/case.svg',
                          colorFilter: ColorFilter.mode(
                              AppColors.grey50, BlendMode.srcIn),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          user.civilProfession ?? '',
                          style: AppTextStyles.s16w400(),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
