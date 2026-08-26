import 'package:flutter/material.dart';
import 'package:soldnet/models/entities/attachment.dart';
import 'package:soldnet/models/entities/message.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/chat/chat_dialog_message_attachment.dart';
import 'package:soldnet/presentation/widgets/chat/chat_popup_image.dart';
import 'package:soldnet/services/utils/formatted_date_get.dart';

class ChatDialogMessage extends StatelessWidget {
  const ChatDialogMessage(
      {super.key, required this.message, required this.isUser});

  final Message message;
  final bool isUser;

  void _openImageFullScreen(
      BuildContext context, List<Attachment> attachments) {
    if (attachments.isNotEmpty) {
      final attachment = attachments.first;
      if (attachment.mimeType.startsWith('image')) {
        showDialog(
            context: context,
            fullscreenDialog: true,
            builder: (context) {
              return ChatPopupImage(attachments: attachments);
            });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: IntrinsicWidth(
        child: Container(
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
              if (message.attachments?.isNotEmpty ?? false)
                Align(
                  alignment:
                      isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () => _openImageFullScreen(
                        context, message.attachments ?? []),
                    child: ChatDialogMessageAttachment(
                        atchms: message.attachments ?? []),
                  ),
                ),
              Align(
                alignment:
                    isUser ? Alignment.centerRight : Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 4, 12, 8),
                  child: Text(
                    message.message,
                    style: AppTextStyles.s16w400(),
                    textAlign: isUser ? TextAlign.right : TextAlign.left,
                  ),
                ),
              ),
              Row(
                children: [
                  Align(
                    alignment:
                        isUser ? Alignment.centerRight : Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
                      child: Text(
                        formattedDateGet(message.createdAt),
                        style: AppTextStyles.s12w500(color: AppColors.grey120),
                        textAlign: isUser ? TextAlign.right : TextAlign.left,
                      ),
                    ),
                  ),
                  if (isUser)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(Icons.more_rounded),
                    )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
