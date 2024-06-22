import 'package:flutter/material.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';
import '../../../../core/utlis/app_icons.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.primary,
              child: AppIcons.fashion,
            ),
            const SizedBox(height: 4),
            const Text(
              'Fashion',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.primary,
              child: AppIcons.games,
            ),
            const SizedBox(height: 4),
            const Text('Games',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.primary,
              child: AppIcons.accessories,
            ),
            const SizedBox(height: 4),
            const Text('Accessories',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.primary,
              child: AppIcons.books,
            ),
            const SizedBox(height: 4),
            const Text('Books',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.primary,
              child: AppIcons.artifacts,
            ),
            const SizedBox(height: 4),
            const Text('Artifacts',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
          ],
        )
      ]),
    );
  }
}
