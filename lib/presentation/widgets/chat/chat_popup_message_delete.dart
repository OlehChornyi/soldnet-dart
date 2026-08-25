import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/models/entities/message.dart';
import 'package:soldnet/presentation/widgets/app/popup/app_popup.dart';
import 'package:soldnet/stores/store_chat.dart';

class ChatPopupMessageDelete extends ConsumerWidget {
  const ChatPopupMessageDelete({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatNotifier = ref.read(storeChatProvider.notifier);

    return AppPopup(
        title: 'Видалити повідомлення',
        subTitle:
            'Повідомлення буде перманентно видалене для всіх користувачів',
        onTap: () => chatNotifier.messageDelete(message));
  }
}
