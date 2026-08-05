import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:soldnet/models/const/const_info.dart';
import 'package:soldnet/models/entities/attachment.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/chat/chat_dialog_message_attachment_file.dart';

class ChatDialogMessageAttachment extends StatelessWidget {
  const ChatDialogMessageAttachment({super.key, required this.atchms});

  final List<Attachment> atchms;

  Widget _getCachedNetworkImage(String url, double width, double height) {
    return CachedNetworkImage(
      imageUrl: url,
      placeholder: (context, url) => Center(
        child: CircularProgressIndicator(
          color: AppColors.primary,
        ),
      ),
      errorWidget: (context, url, error) => Icon(Icons.error),
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
  }

  Widget _buildOneItemUi(double size) {
    final atchm = atchms.first;
    if (atchm.mimeType.startsWith('image')) {
      return ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
          child: _getCachedNetworkImage(
              '${ConstInfo.baseUrl}${atchm.url}', size * 2, size * 2));
    } else if (atchm.mimeType.startsWith('application')) {
      return ChatDialogMessageAttachmentFile(atchm: atchm);
    } else if (atchm.mimeType.startsWith('video')) {}
    return SizedBox.shrink();
  }

  Widget _buildTwoItemsUi(double size) {
    final atchm = atchms.first;
    final atchm2 = atchms[1];

    if (atchm.mimeType.startsWith('image')) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(8)),
            child: _getCachedNetworkImage(
                '${ConstInfo.baseUrl}${atchm.url}', size, size),
          ),
          ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(8)),
              child: _getCachedNetworkImage(
                  '${ConstInfo.baseUrl}${atchm2.url}', size, size)),
        ],
      );
    } else if (atchm.mimeType.startsWith('application')) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ChatDialogMessageAttachmentFile(atchm: atchm),
          ChatDialogMessageAttachmentFile(atchm: atchm2),
        ],
      );
    } else if (atchm.mimeType.startsWith('video')) {}
    return SizedBox.shrink();
  }

  Widget _buildMultipleItemsUi(double size) {
    final atchm = atchms.first;
    final atchm2 = atchms[1];
    final atchm3 = atchms[2];

    if (atchm.mimeType.startsWith('image')) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(8)),
            child: _getCachedNetworkImage(
                '${ConstInfo.baseUrl}${atchm.url}', size, size * 2),
          ),
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(8)),
                child: _getCachedNetworkImage(
                    '${ConstInfo.baseUrl}${atchm2.url}', size, size),
              ),
              _getCachedNetworkImage(
                  '${ConstInfo.baseUrl}${atchm3.url}', size, size)
            ],
          ),
        ],
      );
    } else if (atchm.mimeType.startsWith('application')) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var atchm in atchms)
            ChatDialogMessageAttachmentFile(atchm: atchm),
        ],
      );
    } else if (atchm.mimeType.startsWith('video')) {}
    return SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final atchmWidth = (screenWidth - 102) / 2;

    return atchms.length == 1
        ? _buildOneItemUi(atchmWidth)
        : atchms.length == 2
            ? _buildTwoItemsUi(atchmWidth)
            : atchms.length > 2
                ? _buildMultipleItemsUi(atchmWidth)
                : SizedBox.shrink();
  }
}
