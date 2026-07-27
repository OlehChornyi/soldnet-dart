import 'package:flutter/material.dart';
import 'package:soldnet/presentation/widgets/search/search_header.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;

    return Stack(
      alignment: Alignment.topCenter,
      children: [Positioned(top: paddingTop + 16, child: const SearchHeader())],
    );
  }
}
