import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open_file/open_file.dart';
import 'package:soldnet/models/const/const_info.dart';
import 'package:soldnet/models/entities/attachment.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class ChatDialogMessageAttachmentFile extends StatelessWidget {
  const ChatDialogMessageAttachmentFile({super.key, required this.atchm});

  final Attachment atchm;

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

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final size = screenWidth - 126;

    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      child: GestureDetector(
        onTap: () async {
          final file = await DefaultCacheManager()
              .getSingleFile('${ConstInfo.baseUrl}${atchm.url}');
          await OpenFile.open(file.path);
        },
        child: Container(
          width: size,
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
  }
}
