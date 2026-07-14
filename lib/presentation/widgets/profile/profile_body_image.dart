import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/stores/store_user.dart';

class ProfileBodyImage extends ConsumerStatefulWidget {
  const ProfileBodyImage({super.key});

  @override
  ConsumerState<ProfileBodyImage> createState() => _ProfileBodyImageState();
}

class _ProfileBodyImageState extends ConsumerState<ProfileBodyImage> {
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

  Future<void> _pickImageAndUploadPhoto() async {
    final file = await _pickImage();
    if (file != null) {
      ref.read(storeUserProvider.notifier).uploadPhoto(file);
    }
  }

  @override
  Widget build(BuildContext context) {
    final userState = ref.read(storeUserProvider);

    return GestureDetector(
      onTap: () async => _pickImageAndUploadPhoto(),
      child: Container(
        width: 100,
        height: 100,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: AppColors.primary),
        child: Center(
          child: (userState.user?.avatarUrl?.isNotEmpty ?? false)
              ? Container()
              : Icon(
                  Icons.person_rounded,
                  size: 64,
                  color: AppColors.bg,
                ),
        ),
      ),
    );
  }
}
