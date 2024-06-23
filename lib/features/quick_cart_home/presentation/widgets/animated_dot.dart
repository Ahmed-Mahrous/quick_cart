import 'package:flutter/material.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';

class AnimatedDot extends StatelessWidget {
  const AnimatedDot({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 5),
      height: 6,
      width: isActive ? 20 : 6,
      decoration: BoxDecoration(
        color: isActive ? AppColors.primary : AppColors.secondary,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
