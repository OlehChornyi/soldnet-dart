import 'package:flutter/material.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_circle.dart';
import 'package:soldnet/presentation/widgets/app/textfield/app_text_field.dart';

class SearchHeader extends StatefulWidget {
  const SearchHeader({super.key});

  @override
  State<SearchHeader> createState() => _SearchHeaderState();
}

class _SearchHeaderState extends State<SearchHeader> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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
            onTap: () {},
            icon: Icons.filter_list,
            buttonColor: AppColors.activeBrown,
            iconColor: AppColors.primary,
          ),
          const SizedBox(width: 8),
          AppButtonCircle(
            onTap: () {},
            icon: Icons.search_rounded,
            iconColor: AppColors.activeBrown,
          ),
        ],
      ),
    );
  }
}
