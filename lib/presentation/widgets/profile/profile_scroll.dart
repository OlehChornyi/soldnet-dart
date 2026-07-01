import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';

class ProfileScroll extends StatefulWidget {
  const ProfileScroll({super.key});

  @override
  State<ProfileScroll> createState() => _ProfileScrollState();
}

class _ProfileScrollState extends State<ProfileScroll> {
  late final ScrollController _controller;
  late final Ticker _ticker;
  final double _speed = 20;
  final double _itemWidth = 80;
  final int _repetition = 100;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController(
      initialScrollOffset: _repetition * _itemWidth,
    );

    _ticker = Ticker(_tick)..start();
  }

  void _tick(Duration elapsed) {
    if (!_controller.hasClients) return;
    final double offset = _controller.offset + _speed * (1 / 60);
    _controller.jumpTo(offset);
  }

  @override
  void dispose() {
    _ticker.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        controller: _controller,
        itemBuilder: (context, index) {
          final option = _scrollOptions[index % _scrollOptions.length];
          return FlipCard(
            back: Container(
              width: 60,
              height: 60,
              color: AppColors.black,
              child: Center(
                child: SvgPicture.asset(
                  option.back,
                  colorFilter:
                      ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                ),
              ),
            ),
            front: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(image: AssetImage(option.front))),
            ),
          );
        },
      ),
    );
  }
}

typedef ScrollOption = ({String front, String back});

List<ScrollOption> get _scrollOptions => [
      (
        front: 'assets/images/profile/snake_s.png',
        back: 'assets/icons/profile/scroll_1.svg'
      ),
      (
        front: 'assets/images/profile/zebra_s.png',
        back: 'assets/icons/profile/scroll_2.svg'
      ),
      (
        front: 'assets/images/profile/tiger_s.png',
        back: 'assets/icons/profile/scroll_3.svg'
      ),
      (
        front: 'assets/images/profile/cheeta_s.png',
        back: 'assets/icons/profile/scroll_4.svg'
      ),
      (
        front: 'assets/images/profile/leopard_s.png',
        back: 'assets/icons/profile/scroll_5.svg'
      ),
      (
        front: 'assets/images/profile/leaves_s.png',
        back: 'assets/icons/profile/scroll_6.svg'
      ),
    ];
