import 'package:flutter/material.dart';
import 'package:soldnet/models/entities/attachment.dart';

class ChatPopupImage extends StatelessWidget {
  const ChatPopupImage({super.key, required this.attachments});

  final List<Attachment> attachments;

  @override
  Widget build(BuildContext context) {
    return Dialog(child: const Placeholder());
  }
}
