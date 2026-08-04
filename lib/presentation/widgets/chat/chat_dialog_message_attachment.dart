import 'package:flutter/material.dart';
import 'package:soldnet/models/const/const_info.dart';
import 'package:soldnet/models/entities/attachment.dart';

class ChatDialogMessageAttachment extends StatelessWidget {
  const ChatDialogMessageAttachment({super.key, required this.atchms});

  final List<Attachment> atchms;

  Widget _buildOneItemUi(double width) {
    final atchm = atchms.first;
    if (atchm.mimeType.startsWith('image')) {
      return Image.network('${ConstInfo.baseUrl}${atchm.url}');
    } else if (atchm.mimeType.startsWith('application')) {
    } else if (atchm.mimeType.startsWith('video')) {}
    return SizedBox.shrink();
  }

  Widget _buildTwoItemsUi(double width) {
    final atchm = atchms.first;
    final atchm2 = atchms[1];

    if (atchm.mimeType.startsWith('image')) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
            child: Image.network(
              '${ConstInfo.baseUrl}${atchm.url}',
              width: width,
              height: width,
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
            child: Image.network(
              '${ConstInfo.baseUrl}${atchm2.url}',
              width: width,
              height: width,
              fit: BoxFit.cover,
            ),
          ),
        ],
      );
    } else if (atchm.mimeType.startsWith('application')) {
    } else if (atchm.mimeType.startsWith('video')) {}
    return SizedBox.shrink();
  }

  Widget _buildMultipleItemsUi(double width) {
    return SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final atchmWidth = (screenWidth - 164) / 2;

    return atchms.length == 1
        ? _buildOneItemUi(atchmWidth)
        : atchms.length == 2
            ? _buildTwoItemsUi(atchmWidth)
            : atchms.length < 2
                ? _buildMultipleItemsUi(atchmWidth)
                : SizedBox.shrink();
  }
}
