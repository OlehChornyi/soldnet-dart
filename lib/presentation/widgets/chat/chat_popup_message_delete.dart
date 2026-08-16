import 'package:flutter/material.dart';
import 'package:soldnet/presentation/widgets/app/popup/app_popup.dart';

class ChatPopupMessageDelete extends StatelessWidget {
  const ChatPopupMessageDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPopup(
        title: 'Видалити повідомлення',
        subTitle:
            'Повідомлення буде перманентно видалене для всіх користувачів',
        onTap: () {});
  }
}
