import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/app/app_router.dart';
import 'package:soldnet/presentation/widgets/profile/profile_body.dart';
import 'package:soldnet/presentation/widgets/profile/profile_header.dart';
import 'package:soldnet/presentation/widgets/profile/profile_scroll.dart';
import 'package:soldnet/stores/store_chat.dart';

class ProfileContainer extends ConsumerStatefulWidget {
  const ProfileContainer({super.key});

  @override
  ConsumerState<ProfileContainer> createState() => _ProfileContainerState();
}

class _ProfileContainerState extends ConsumerState<ProfileContainer> {
  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;

    final chatState = ref.watch(storeChatProvider);

    return Column(
      children: [
        SizedBox(height: paddingTop + 12),
        const ProfileHeader(),
        const SizedBox(height: 16),
        const ProfileBody(),
        const SizedBox(height: 12),
        const ProfileScroll(),
        IconButton(
            onPressed: () => context.go(ScreenPaths.redirection),
            icon: Icon(Icons.logout_rounded)),
      ],
    );
  }
}
