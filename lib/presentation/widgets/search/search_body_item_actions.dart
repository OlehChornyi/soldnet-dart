import 'package:flutter/material.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class SearchBodyItemActions extends StatelessWidget {
  const SearchBodyItemActions({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: AppColors.grey220),
          child: Center(
            child: Icon(
              Icons.info_rounded,
              color: AppColors.grey170,
              size: 20,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: AppColors.activeBrown),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Icon(
                Icons.send_rounded,
                color: AppColors.primary,
                size: 20,
              ),
            ),
          ),
        )
      ],
    );
  }
}
