import 'package:flutter/material.dart';
import 'package:soldnet/presentation/widgets/app/popup/app_popup.dart';

class ChatPopupConversationDelete extends StatelessWidget {
  const ChatPopupConversationDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPopup(
        title: 'Видалити чат',
        subTitle: 'Чат буде перманентно видалено для всіх користувачів',
        onTap: () {});
  }
}
