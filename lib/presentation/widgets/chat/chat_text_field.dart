import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_circle.dart';
import 'package:soldnet/presentation/widgets/app/textfield/app_text_field.dart';
import 'package:soldnet/stores/store_chat.dart';

class ChatTextField extends ConsumerStatefulWidget {
  const ChatTextField({super.key});

  @override
  ConsumerState<ChatTextField> createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends ConsumerState<ChatTextField> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final bool _isNotError = true;

  void _sendMessage() {
    ref
        .read(storeChatProvider.notifier)
        .sendMessageTextToWs(_textController.text);
  }

  void _deleteAttachments() {
    ref.read(storeChatProvider.notifier).setFilesToUpload([]);
  }

  String _getFileName(List<Object> files) {
    if (files.isNotEmpty) {
      if (files is List<XFile>) {
        return files.first.name;
      } else if (files is List<PlatformFile>) {
        return files.first.name;
      }
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final filesToUpload =
        ref.watch(storeChatProvider.select((state) => state.filesToUpload));

    return Column(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: filesToUpload.isNotEmpty ? 40 : 0,
          padding: EdgeInsets.only(bottom: filesToUpload.isNotEmpty ? 8 : 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 8),
                width: screenWidth - 72,
                height: 32,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${filesToUpload.length} прикріплено (${_getFileName(filesToUpload)})',
                    style: AppTextStyles.s12w500(),
                  ),
                ),
              ),
              GestureDetector(
                onTap: _deleteAttachments,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Icon(Icons.close_rounded),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AppTextField(
                controller: _textController,
                focusNode: _focusNode,
                isNotError: _isNotError,
                hint: 'Напишіть щось...',
                borderRadius: 24,
              ),
            ),
            const SizedBox(width: 8),
            AppButtonCircle(
              onTap: _sendMessage,
              icon: Icons.send_rounded,
            ),
          ],
        ),
      ],
    );
  }
}
