import 'package:flutter/material.dart';
import 'package:soldnet/presentation/widgets/profile/profile_body.dart';
import 'package:soldnet/presentation/widgets/profile/profile_header.dart';
import 'package:soldnet/presentation/widgets/profile/profile_logout.dart';
import 'package:soldnet/presentation/widgets/profile/profile_scroll.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;

    return Column(
      children: [
        SizedBox(height: paddingTop + 12),
        const ProfileHeader(),
        const SizedBox(height: 16),
        const ProfileBody(),
        const SizedBox(height: 12),
        const ProfileScroll(),
        const SizedBox(height: 24),
        const ProfileLogout()
      ],
    );
  }
}
