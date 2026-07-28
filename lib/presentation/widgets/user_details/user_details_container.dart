import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/models/const/const_info.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/stores/store_search.dart';

class UserDetailsContainer extends ConsumerWidget {
  const UserDetailsContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paddingTop = MediaQuery.of(context).padding.top;

    final searchState = ref.watch(storeSearchProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: paddingTop + 8),
            GestureDetector(
              onTap: () => context.pop(),
              child: Icon(Icons.arrow_back_ios_new_rounded),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 108,
                height: 108,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary,
                    image: searchState.selectedUser?.avatarUrl?.isEmpty ?? true
                        ? null
                        : DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                '${ConstInfo.baseUrl}${searchState.selectedUser?.avatarUrl}'))),
                child: searchState.selectedUser?.avatarUrl?.isNotEmpty ?? false
                    ? null
                    : Center(
                        child: Icon(
                          Icons.person_rounded,
                          size: 64,
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 8),
            Align(
                alignment: Alignment.topCenter,
                child: Text(
                  searchState.selectedUser?.name ?? '',
                  style: AppTextStyles.s20w600(color: AppColors.white),
                )),
            const SizedBox(height: 4),
            Align(
                alignment: Alignment.topCenter,
                child: Text(
                  searchState.selectedUser?.email ?? '',
                  style: AppTextStyles.s14w500(color: AppColors.grey120),
                )),
            const Divider(
              height: 32,
              color: AppColors.primary,
            ),
            Text(searchState.selectedUser?.militaryRank ?? ''),
            Text(searchState.selectedUser?.civilProfession ?? ''),
            Text(searchState.selectedUser?.interests.toString() ?? ''),
          ],
        ),
      ),
    );
  }
}
