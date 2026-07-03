import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:soldnet/models/data/home_sections.dart';
import 'package:soldnet/presentation/widgets/app/animations/app_animations_fade_in_list.dart';
import 'package:soldnet/presentation/widgets/home/home_sections_back.dart';
import 'package:soldnet/presentation/widgets/home/home_sections_front.dart';

class HomeSections extends StatefulWidget {
  const HomeSections({super.key});

  @override
  State<HomeSections> createState() => _HomeSectionsState();
}

class _HomeSectionsState extends State<HomeSections> {
  final _scrollController = ScrollController();
  bool _isUserReachedPageBottom = false;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          setState(() => _isUserReachedPageBottom = true);
        }
        if (_scrollController.position.pixels ==
            _scrollController.position.minScrollExtent) {
          setState(() => _isUserReachedPageBottom = false);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;

    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          SizedBox(
            height: paddingTop + 12,
          ),
          AppFadeInList<HomeSection>(
            padding: EdgeInsets.zero,
            items: homeSections,
            itemBuilder: (context, item, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: FlipCard(
                    back: HomeSectionsBack(index: index),
                    front: HomeSectionsFront(index: index)),
              );
            },
          ),
          AnimatedOpacity(
            duration: Duration(milliseconds: 500),
            opacity: _isUserReachedPageBottom ? 1 : 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 100),
              child: Image.asset(
                'assets/images/redirection_page/kitty.png',
                height: 200,
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
        ],
      ),
    );
  }
}
