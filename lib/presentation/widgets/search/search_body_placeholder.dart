import 'package:flutter/widgets.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';

class SearchBodyPlaceholder extends StatelessWidget {
  const SearchBodyPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 200,
        width: screenWidth - 32,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
            color: AppColors.bgLight, borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Image.asset(
              'assets/images/home/cat_3.png',
              height: 150,
            ),
            Text(
              'Пошук не дав результатів. Спробуйту інше ключове слово або параметр.',
              style: AppTextStyles.s14w500(),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
