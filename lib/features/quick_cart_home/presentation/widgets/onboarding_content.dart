import 'package:flutter/material.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.illustration,
    required this.title,
    required this.text,
  });

  final String illustration, title, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(illustration),
          ),
        ),
        const SizedBox(height: 16),
        Text(title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.mainTextColor,
                fontSize: 20)),
        const SizedBox(height: 8),
        Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.w500, color: Colors.black54, fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
