import 'package:flutter/material.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';
import 'package:quick_cart/core/utlis/app_icons.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/lang/lang.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/electronics_screen.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/jewelery_screen.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/men_screen.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/women_screen.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MenScreen()));
              },
              child: CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.primary,
                child: AppIcons.fashion,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              AppLocalizations.of(context)?.translate('men') ?? '',
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WomenScreen()));
              },
              child: CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.primary,
                child: AppIcons.women,
              ),
            ),
            const SizedBox(height: 4),
            Text(AppLocalizations.of(context)?.translate('women') ?? '',
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const JeweleryScreen()));
              },
              child: CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.primary,
                child: AppIcons.jewelery,
              ),
            ),
            const SizedBox(height: 4),
            Text(AppLocalizations.of(context)?.translate('jewelery') ?? '',
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ElectronicsScreen()));
              },
              child: CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.primary,
                child: AppIcons.electronics,
              ),
            ),
            const SizedBox(height: 4),
            Text(AppLocalizations.of(context)?.translate('electronics') ?? '',
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.primary,
              child: AppIcons.books,
            ),
            const SizedBox(height: 4),
            Text(AppLocalizations.of(context)?.translate('books') ?? '',
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
          ],
        )
      ]),
    );
  }
}
