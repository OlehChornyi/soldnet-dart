import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:photo_view/photo_view.dart';
import 'package:soldnet/models/const/const_info.dart';
import 'package:soldnet/models/entities/attachment.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class ChatPopupImage extends StatefulWidget {
  const ChatPopupImage({super.key, required this.attachments});

  final List<Attachment> attachments;

  @override
  State<ChatPopupImage> createState() => _ChatPopupImageState();
}

class _ChatPopupImageState extends State<ChatPopupImage> {
  String _currentImageUrl = '';

  @override
  void initState() {
    super.initState();
    setState(() => _currentImageUrl = widget.attachments.first.url);
  }

  void _nextImage() {
    final currentIndex = widget.attachments
        .indexWhere((attachment) => attachment.url == _currentImageUrl);
    final nextIndex = (currentIndex + 1) % widget.attachments.length;
    setState(() => _currentImageUrl = widget.attachments[nextIndex].url);
  }

  void _previousImage() {
    final currentIndex = widget.attachments
        .indexWhere((attachment) => attachment.url == _currentImageUrl);
    final previousIndex = (currentIndex - 1 + widget.attachments.length) %
        widget.attachments.length;
    setState(() => _currentImageUrl = widget.attachments[previousIndex].url);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.zero,
        child: Stack(
          children: [
            PhotoView(
                imageProvider:
                    NetworkImage('${ConstInfo.baseUrl}$_currentImageUrl')),
            Container(
                width: screenWidth,
                height: screenHeight,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Icon(Icons.close, color: AppColors.white),
                        onPressed: () => context.pop(),
                      ),
                    ),
                    if (widget.attachments.length > 1)
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight / 2 - 100),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: Icon(Icons.arrow_back_ios_rounded,
                                    color: AppColors.white),
                                onPressed: () => _previousImage(),
                              ),
                              IconButton(
                                icon: Icon(Icons.arrow_forward_ios_rounded,
                                    color: AppColors.white),
                                onPressed: () => _nextImage(),
                              ),
                            ]),
                      )
                  ],
                )),
          ],
        ));
  }
}
