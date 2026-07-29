import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_circle.dart';
import 'package:soldnet/presentation/widgets/app/textfield/app_text_field.dart';
import 'package:soldnet/presentation/widgets/search/search_bottom_sheet.dart';
import 'package:soldnet/stores/store_search.dart';

class SearchHeader extends ConsumerStatefulWidget {
  const SearchHeader({super.key});

  @override
  ConsumerState<SearchHeader> createState() => _SearchHeaderState();
}

class _SearchHeaderState extends ConsumerState<SearchHeader> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final searchNotifier = ref.read(storeSearchProvider.notifier);

    return SizedBox(
      width: screenWidth - 32,
      child: Row(
        children: [
          Expanded(
            child: AppTextField(
                controller: _controller,
                focusNode: _focusNode,
                isNotError: true,
                borderRadius: 24,
                hint: 'Пошуковий параметр тють'),
          ),
          const SizedBox(width: 4),
          AppButtonCircle(
            onTap: () => showSearchBottomSheet(),
            icon: Icons.filter_list,
            buttonColor: AppColors.activeBrown,
            iconColor: AppColors.primary,
          ),
          const SizedBox(width: 8),
          AppButtonCircle(
            onTap: () {
              if (_controller.text.trim().isNotEmpty) {
                searchNotifier.getUsersWithQuery(_controller.text.trim());
              }
            },
            icon: Icons.search_rounded,
            iconColor: AppColors.activeBrown,
          ),
        ],
      ),
    );
  }
}
