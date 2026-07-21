import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/models/utils/home_tab.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/widgets/home/home_details.dart';
import 'package:soldnet/presentation/widgets/home/home_sections.dart';
import 'package:soldnet/services/ws/ws_chat.dart';
import 'package:soldnet/stores/store_chat.dart';
import 'package:soldnet/stores/store_home.dart';
import 'package:soldnet/stores/store_user.dart';

class HomeContainer extends ConsumerStatefulWidget {
  const HomeContainer({super.key});

  @override
  ConsumerState<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends ConsumerState<HomeContainer> {
  @override
  void initState() {
    super.initState();
    _makeApiCallsAndMaybeStartWs();
  }

  void _makeApiCallsAndMaybeStartWs() {
    ref.read(storeUserProvider.notifier).getUserAccount();
    final chatNotifier = ref.read(storeChatProvider.notifier);
    chatNotifier.getAllUserConversations();
    chatNotifier.getAllUsers();

    WsChat.startWsChat(ref);
  }

  @override
  Widget build(BuildContext context) {
    final paddingBottom = MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final homeState = ref.watch(storeHomeProvider);
    final homeNotifier = ref.read(storeHomeProvider.notifier);

    return Stack(
      children: [
        AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            width: screenWidth,
            height: screenHeight,
            left: homeState.tab == HomeTab.sections ? 0 : -screenWidth,
            child: HomeSections()),
        AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            width: screenWidth,
            height: screenHeight,
            right: homeState.tab == HomeTab.details ? 0 : -screenWidth,
            child: HomeDetails()),
        AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            width: 52,
            height: 48,
            right: homeState.tab == HomeTab.details ? 16 : -68,
            bottom: paddingBottom + 8,
            child: GestureDetector(
              onTap: () => homeNotifier.setTab(HomeTab.sections),
              child: Container(
                  width: 52,
                  height: 48,
                  decoration: BoxDecoration(
                      color: AppColors.action2Active,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.white,
                      ),
                    ),
                  )),
            )),
      ],
    );
  }
}
