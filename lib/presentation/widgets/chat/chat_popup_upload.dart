import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_action.dart';
import 'package:soldnet/stores/store_chat.dart';

class ChatPopupUpload extends ConsumerWidget {
  const ChatPopupUpload({super.key});

  Future<void> _uploadImage(BuildContext context, StoreChat notifier) async {
    final images = await ImagePicker().pickMultiImage();

    if (images.isNotEmpty) {
      notifier.setFilesToUpload(images);
    }

    if (context.mounted) {
      context.pop();
    }
  }

  Future<void> _uploadVideo(BuildContext context, StoreChat notifier) async {
    final videos = await ImagePicker().pickMultiVideo();

    if (videos.isNotEmpty) {
      notifier.setFilesToUpload(videos);
    }

    if (context.mounted) {
      context.pop();
    }
  }

  Future<void> _uploadFile(BuildContext context, StoreChat notifier) async {
    final result = await FilePicker.pickFiles(
      allowMultiple: true,
    );

    if (result != null) {
      notifier.setFilesToUpload(result.files);
    }

    if (context.mounted) {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatNotifier = ref.read(storeChatProvider.notifier);

    return Dialog(
      child: Container(
        height: 184,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
            color: AppColors.activeBrown,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          spacing: 8,
          children: [
            AppButtonAction(
                text: 'Upload image',
                onTap: () => _uploadImage(context, chatNotifier)),
            AppButtonAction(
                text: 'Upload video',
                onTap: () => _uploadVideo(context, chatNotifier)),
            AppButtonAction(
                text: 'Upload file',
                onTap: () => _uploadFile(context, chatNotifier))
          ],
        ),
      ),
    );
  }
}
