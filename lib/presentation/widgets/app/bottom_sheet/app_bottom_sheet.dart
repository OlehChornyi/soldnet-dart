import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    super.key,
    required this.header,
    required this.body,
    this.subHeader,
  });

  final String header;
  final Widget body;
  final String? subHeader;

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height - 100;

    return IntrinsicHeight(
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(minHeight: 100, maxHeight: maxHeight),
        decoration: BoxDecoration(
          color: AppColors.bgLight,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 86,
              decoration: BoxDecoration(
                color: AppColors.active,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(header,
                            style: AppTextStyles.s20w600(
                                color: AppColors.bgLight)),
                        Spacer(),
                        GestureDetector(
                          onTap: () => context.pop(),
                          child: Icon(Icons.close_rounded),
                        ),
                        const SizedBox(width: 12),
                      ],
                    ),
                    if (subHeader != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          subHeader ?? '',
                          style:
                              AppTextStyles.s12w500(color: AppColors.bgLight),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 10,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/redirection_page/khaki.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(child: body),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
