import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/models/entities/attachment.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class ChatPopupImage extends StatelessWidget {
  const ChatPopupImage({super.key, required this.attachments});

  final List<Attachment> attachments;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.zero,
        child: Stack(
          children: [
            Container(
                width: screenWidth,
                height: screenHeight,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.black.withAlpha(100),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Icon(Icons.close, color: AppColors.white),
                        onPressed: () => context.pop(),
                      ),
                    ),
                    if (attachments.length > 1)
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight / 2 - 100),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: Icon(Icons.arrow_back_ios_rounded,
                                    color: AppColors.white),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(Icons.arrow_forward_ios_rounded,
                                    color: AppColors.white),
                                onPressed: () {},
                              ),
                            ]),
                      )
                  ],
                )),
          ],
        ));
  }
}
