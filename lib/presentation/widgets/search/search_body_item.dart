import 'package:flutter/material.dart';
import 'package:soldnet/models/entities/user.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class SearchBodyItem extends StatelessWidget {
  const SearchBodyItem({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth - 32,
      constraints: BoxConstraints(minHeight: 100),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: BoxDecoration(
          color: AppColors.activeMint, borderRadius: BorderRadius.circular(12)),
      child: Text('USER NAME: ${user.name}'),
    );
  }
}
