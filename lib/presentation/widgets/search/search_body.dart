import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/presentation/widgets/app/animations/app_animations_fade_in_list.dart';
import 'package:soldnet/presentation/widgets/search/search_body_item.dart';
import 'package:soldnet/stores/store_chat.dart';

class SearchBody extends ConsumerWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paddingTop = MediaQuery.of(context).padding.top;
    final paddingBottom = MediaQuery.of(context).padding.bottom;

    final chatState = ref.watch(storeChatProvider);

    return AppFadeInList<User>(
      shrinkWrap: false,
      physics: AlwaysScrollableScrollPhysics(),
      padding: EdgeInsets.fromLTRB(16, paddingTop + 76, 16, paddingBottom + 16),
      items: chatState.users,
      itemBuilder: (context, item, index) {
        return SearchBodyItem(user: chatState.users[index]);
      },
    );
  }
}
