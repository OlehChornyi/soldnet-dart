import 'package:flutter/material.dart';
import 'package:soldnet/models/entities/message.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/chat/chat_dialog_message_attachment.dart';

class ChatDialogMessage extends StatelessWidget {
  const ChatDialogMessage(
      {super.key, required this.message, required this.isUser});

  final Message message;
  final bool isUser;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: IntrinsicWidth(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          constraints: BoxConstraints(maxWidth: screenWidth - 100),
          decoration: BoxDecoration(
              color: isUser ? AppColors.userMessage : AppColors.white,
              border: Border.all(color: AppColors.active),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(isUser ? 12 : 0),
                  bottomRight: Radius.circular(isUser ? 0 : 12))),
          child: Column(
            children: [
              if (message.attachments?.isNotEmpty ?? false) ...{
                Align(
                  alignment:
                      isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: ChatDialogMessageAttachment(
                      atchms: message.attachments ?? []),
                ),
                const SizedBox(height: 4)
              },
              Align(
                alignment:
                    isUser ? Alignment.centerRight : Alignment.centerLeft,
                child: Text(
                  message.message,
                  style: AppTextStyles.s16w400(),
                  textAlign: isUser ? TextAlign.right : TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
