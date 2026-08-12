import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class CallVideoSelf extends StatelessWidget {
  const CallVideoSelf({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      height: 144,
      decoration: BoxDecoration(
          color: AppColors.black, borderRadius: BorderRadius.circular(12)),
    );
  }
}
