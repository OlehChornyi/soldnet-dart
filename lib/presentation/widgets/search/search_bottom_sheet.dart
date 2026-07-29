import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/app/app_router.dart';
import 'package:soldnet/models/utils/search_param.dart';
import 'package:soldnet/presentation/widgets/app/bottom_sheet/app_bottom_sheet.dart';
import 'package:soldnet/presentation/widgets/chat/chat_bottom_sheet_users_item.dart';
import 'package:soldnet/presentation/widgets/search/search_bottom_sheet_item.dart';
import 'package:soldnet/stores/store_search.dart';

void showSearchBottomSheet() {
  showModalBottomSheet(
    isScrollControlled: true,
    context: Navigator.of(
      rootNavigatorKey.currentContext!,
      rootNavigator: true,
    ).context,
    builder: (context) {
      return SearchBottomSheet();
    },
  );
}

class SearchBottomSheet extends ConsumerWidget {
  const SearchBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paddingBottom = MediaQuery.of(context).padding.bottom;
    final searchState =
        ref.watch(storeSearchProvider.select((state) => state.users));
    final searchNotifier = ref.read(storeSearchProvider.notifier);

    return AppBottomSheet(
        header: 'Оберіть параметр пошуку',
        body: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            for (var p in SearchParam.values) ...{SearchBottomSheetItem()},
            SizedBox(height: paddingBottom + 16),
          ],
        ));
  }
}
