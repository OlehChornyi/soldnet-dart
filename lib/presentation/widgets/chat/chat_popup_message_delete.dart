import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class ChatPopupMessageDelete extends StatelessWidget {
  const ChatPopupMessageDelete({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Dialog(
      child: Container(
        width: screenWidth,
        constraints: BoxConstraints(minHeight: 100),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.activeBrown,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
