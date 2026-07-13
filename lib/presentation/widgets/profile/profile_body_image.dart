import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class ProfileBodyImage extends StatelessWidget {
  const ProfileBodyImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: AppColors.primary),
      child: Center(
        child: Icon(
          Icons.person_rounded,
          size: 64,
          color: AppColors.bg,
        ),
      ),
    );
  }
}
