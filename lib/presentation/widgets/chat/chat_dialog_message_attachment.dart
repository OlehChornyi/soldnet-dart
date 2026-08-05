import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open_file/open_file.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:soldnet/models/const/const_info.dart';
import 'package:soldnet/models/entities/attachment.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class ChatDialogMessageAttachment extends StatelessWidget {
  const ChatDialogMessageAttachment({super.key, required this.atchms});

  final List<Attachment> atchms;

  String _getSvgIconByMimeType(String mimeType) {
    if (mimeType.contains('pdf')) {
      return 'assets/icons/chat/pdf.svg';
    } else if (mimeType.contains('word')) {
      return 'assets/icons/chat/word.svg';
    } else if (mimeType.contains('excel') || mimeType.contains('spreads')) {
      return 'assets/icons/chat/excel.svg';
    } else {
      return 'assets/icons/chat/file.svg';
    }
  }

  Widget _buildOneItemUi(double size) {
    final atchm = atchms.first;
    if (atchm.mimeType.startsWith('image')) {
      return ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8), topRight: Radius.circular(8)),
        child: Image.network(
          '${ConstInfo.baseUrl}${atchm.url}',
          width: size * 2,
          height: size * 2,
          fit: BoxFit.cover,
        ),
      );
    } else if (atchm.mimeType.startsWith('application')) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
        child: GestureDetector(
          onTap: () async {
            await OpenFile.open('${ConstInfo.baseUrl}${atchm.url}');
          },
          child: Container(
            width: size * 2 - 24,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  _getSvgIconByMimeType(atchm.mimeType),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    atchm.name,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
        ),
      );
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
            child: Image.network(
              '${ConstInfo.baseUrl}${atchm.url}',
              width: size,
              height: size,
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(topRight: Radius.circular(8)),
            child: Image.network(
              '${ConstInfo.baseUrl}${atchm2.url}',
              width: size,
              height: size,
              fit: BoxFit.cover,
            ),
          ),
        ],
      );
    } else if (atchm.mimeType.startsWith('application')) {
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
            child: Image.network(
              '${ConstInfo.baseUrl}${atchm.url}',
              width: size,
              height: size * 2,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(8)),
                child: Image.network(
                  '${ConstInfo.baseUrl}${atchm2.url}',
                  width: size,
                  height: size,
                  fit: BoxFit.cover,
                ),
              ),
              Image.network(
                '${ConstInfo.baseUrl}${atchm3.url}',
                width: size,
                height: size,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      );
    } else if (atchm.mimeType.startsWith('application')) {
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
