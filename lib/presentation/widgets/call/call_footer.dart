import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class CallFooter extends StatelessWidget {
  const CallFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final paddingBottom = MediaQuery.of(context).padding.bottom;

    return Container(
      width: screenWidth,
      height: paddingBottom + 48,
      color: AppColors.black,
    );
  }
}
