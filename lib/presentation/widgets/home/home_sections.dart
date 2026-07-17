import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:soldnet/models/data/home_sections.dart';
import 'package:soldnet/models/data/home_sections_mascot.dart';
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
    final paddingBottom = MediaQuery.of(context).padding.bottom;

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
                padding: const EdgeInsets.only(top: 50),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    viewportFraction: 0.45,
                    enlargeCenterPage: true,
                  ),
                  items: mascotItems.map((item) {
                    return Image.asset(
                      item,
                      height: 200,
                    );
                  }).toList(),
                ),
              )),
          SizedBox(height: paddingBottom + 48),
        ],
      ),
    );
  }
}
