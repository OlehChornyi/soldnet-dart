import 'package:flutter/material.dart';
import 'package:soldnet/presentation/widgets/search/search_body.dart';
import 'package:soldnet/presentation/widgets/search/search_header.dart';

class SearchContainer extends StatefulWidget {
  const SearchContainer({super.key});

  @override
  State<SearchContainer> createState() => _SearchContainerState();
}

class _SearchContainerState extends State<SearchContainer> {
  bool _isHeaderVisible = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() => _isHeaderVisible = true);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SearchBody(),
        Positioned(
            top: paddingTop + 16,
            child: AnimatedOpacity(
                duration: Duration(milliseconds: 300),
                opacity: _isHeaderVisible ? 1 : 0,
                child: const SearchHeader())),
      ],
    );
  }
}
