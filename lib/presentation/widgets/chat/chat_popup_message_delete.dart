import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_action.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.error),
                child: Icon(
                  Icons.delete_rounded,
                  color: AppColors.white,
                )),
            const SizedBox(height: 24),
            Text('TITLE'),
            const SizedBox(height: 16),
            Text('Subtitle'),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: AppButtonAction(text: 'text', onTap: () {})),
                Expanded(child: AppButtonAction(text: 'text', onTap: () {})),
              ],
            )
          ],
        ),
      ),
    );
  }
}
