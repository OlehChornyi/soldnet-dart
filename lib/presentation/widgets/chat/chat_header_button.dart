import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_fade.dart';

class ChatHeaderButton extends StatelessWidget {
  const ChatHeaderButton({super.key, required this.onTap, required this.icon});

  final Function() onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AppButtonFade(
        onTap: onTap,
        child: Container(
          height: 40,
          decoration: BoxDecoration(
              color: AppColors.primary, borderRadius: BorderRadius.circular(6)),
          child: Center(
            child: Icon(icon, color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
