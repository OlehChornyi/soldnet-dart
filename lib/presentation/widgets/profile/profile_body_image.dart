import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class ProfileBodyImage extends StatefulWidget {
  const ProfileBodyImage({super.key});

  @override
  State<ProfileBodyImage> createState() => _ProfileBodyImageState();
}

class _ProfileBodyImageState extends State<ProfileBodyImage> {
  final picker = ImagePicker();

  Future<File?> _pickImage() async {
    final image = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
      maxWidth: 1000,
    );

    if (image == null) return null;

    return File(image.path);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async => _pickImage(),
      child: Container(
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
      ),
    );
  }
}
