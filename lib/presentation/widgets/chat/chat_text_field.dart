import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
    ref.read(storeChatProvider.notifier).sendMessageToWs(_textController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
