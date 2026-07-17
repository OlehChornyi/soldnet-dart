import 'package:flutter/material.dart';
import 'package:soldnet/models/entities/conversation.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class ChatGroupsItem extends StatelessWidget {
  const ChatGroupsItem({super.key, required this.conversation});

  final Conversation conversation;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth - 32,
      height: 88,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.bgLight,
      ),
      child: Row(
        children: [
          Container(
            width: 72,
            height: 72,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: AppColors.white),
            child: Center(
              child: Icon(
                Icons.person_rounded,
                size: 48,
                color: AppColors.bgLight,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(conversation.title),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: AppColors.primary,
          )
        ],
      ),
    );
  }
}
