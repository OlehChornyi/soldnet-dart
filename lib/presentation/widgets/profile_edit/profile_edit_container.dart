import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/app/button/app_button_action.dart';
import 'package:soldnet/presentation/widgets/profile/profile_body_image.dart';
import 'package:soldnet/presentation/widgets/profile_edit/profile_edit_item.dart';
import 'package:soldnet/stores/store_user.dart';

class ProfileEditContainer extends ConsumerStatefulWidget {
  const ProfileEditContainer({super.key});

  @override
  ConsumerState<ProfileEditContainer> createState() =>
      _ProfileEditContainerState();
}

class _ProfileEditContainerState extends ConsumerState<ProfileEditContainer> {
  TextEditingController nameController = TextEditingController();
  TextEditingController rankController = TextEditingController();
  TextEditingController professionController = TextEditingController();
  TextEditingController interestsController = TextEditingController();
  FocusNode nameNode = FocusNode();
  FocusNode rankNode = FocusNode();
  FocusNode professionNode = FocusNode();
  FocusNode interestsNode = FocusNode();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final userState = ref.read(storeUserProvider);

      nameController.text = userState.user?.name ?? '';
      rankController.text = userState.user?.militaryRank ?? '';
      professionController.text = userState.user?.civilProfession ?? '';
      interestsController.text = userState.user?.interests.toString() ?? '';
    });
  }

  void _confirmChanges(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;

    final userState = ref.watch(storeUserProvider);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: paddingTop + 8),
            GestureDetector(
              onTap: () => context.pop(),
              child: Icon(Icons.arrow_back_ios_rounded, size: 24),
            ),
            const SizedBox(height: 16),
            Align(alignment: Alignment.topCenter, child: ProfileBodyImage()),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                userState.user?.email ?? '',
                style: AppTextStyles.s16w400(color: AppColors.primary),
              ),
            ),
            const SizedBox(height: 24),
            ProfileEditItem(
              labelText: 'Ім\'я',
              hintText: 'Ім\'я тють...',
              controller: nameController,
              focusNode: nameNode,
            ),
            const SizedBox(height: 16),
            ProfileEditItem(
              labelText: 'Військове звання',
              hintText: 'Військове звання тють...',
              controller: rankController,
              focusNode: rankNode,
            ),
            const SizedBox(height: 16),
            ProfileEditItem(
              labelText: 'Цивільна професія',
              hintText: 'Професія тють...',
              controller: professionController,
              focusNode: professionNode,
            ),
            const SizedBox(height: 16),
            ProfileEditItem(
              labelText: 'Коло інтересів',
              hintText: 'Хоббі тють...',
              controller: interestsController,
              focusNode: interestsNode,
            ),
            const SizedBox(height: 16),
            AppButtonAction(
                text: 'Підтвердити зміни',
                onTap: () => _confirmChanges(context))
          ],
        ),
      ),
    );
  }
}
