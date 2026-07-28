import 'package:flutter/material.dart';
import 'package:soldnet/models/const/const_info.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';

class SearchBodyItemAvatar extends StatelessWidget {
  const SearchBodyItemAvatar({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          color: AppColors.bgLight,
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('${ConstInfo.baseUrl}${user.avatarUrl}'))),
      child: (user.avatarUrl?.isNotEmpty ?? false)
          ? null
          : Center(
              child: Text(
              '${user.name?[0]}',
              style: AppTextStyles.s20w600(color: AppColors.active),
            )),
    );
  }
}
