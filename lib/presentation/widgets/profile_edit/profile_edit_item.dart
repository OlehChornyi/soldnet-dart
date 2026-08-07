import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/app/textfield/app_text_field.dart';

class ProfileEditItem extends StatelessWidget {
  const ProfileEditItem(
      {super.key,
      required this.labelText,
      required this.hintText,
      required this.controller,
      required this.focusNode});

  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: AppTextStyles.s14w500(color: AppColors.primary),
        ),
        const SizedBox(height: 4),
        AppTextField(
            hint: hintText,
            controller: controller,
            focusNode: focusNode,
            isNotError: true),
      ],
    );
  }
}
