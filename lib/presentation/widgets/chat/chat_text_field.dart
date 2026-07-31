import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
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

  @override
  Widget build(BuildContext context) {
    final filesToUpload =
        ref.watch(storeChatProvider.select((state) => state.filesToUpload));

    return Column(
      children: [
        if (filesToUpload.isNotEmpty) ...{
          Container(
            width: 100,
            height: 32,
            decoration: BoxDecoration(color: AppColors.white),
          ),
          const SizedBox(height: 8)
        },
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
