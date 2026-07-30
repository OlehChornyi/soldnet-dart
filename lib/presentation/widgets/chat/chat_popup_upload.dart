import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_action.dart';

class ChatPopupUpload extends StatelessWidget {
  const ChatPopupUpload({super.key});

  Future<void> _uploadImage(BuildContext context) async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
      maxWidth: 1000,
    );

    print(File(image?.path ?? ''));

    if (context.mounted) {
      context.pop();
    }
  }

  Future<void> _uploadFile(BuildContext context) async {
    final result = await FilePicker.pickFiles(
      allowMultiple: true,
    );

    if (result != null) {
      final file = result.files.first;

      print(file.name);
      print(file.path);
      print(file.size);
    }

    if (context.mounted) {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 128,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
            color: AppColors.activeBrown,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            AppButtonAction(
                text: 'Upload image', onTap: () => _uploadImage(context)),
            const SizedBox(height: 8),
            AppButtonAction(
                text: 'Upload file', onTap: () => _uploadFile(context))
          ],
        ),
      ),
    );
  }
}
