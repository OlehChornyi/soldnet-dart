import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_fade.dart';

class AppButtonCircle extends StatelessWidget {
  const AppButtonCircle(
      {super.key,
      required this.onTap,
      required this.icon,
      this.buttonColor,
      this.iconColor,
      this.buttonSize,
      this.iconSize});

  final Function() onTap;
  final IconData icon;
  final Color? buttonColor;
  final Color? iconColor;
  final double? buttonSize;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return AppButtonFade(
      onTap: onTap,
      child: Container(
        width: buttonSize ?? 48,
        height: buttonSize ?? 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: buttonColor ?? AppColors.primary,
        ),
        child: Center(
            child: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        )),
      ),
    );
  }
}
