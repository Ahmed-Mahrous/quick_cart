import 'package:flutter/material.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/lang/lang.dart';
import '../../../../core/utlis/app_icons.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          isCollapsed: true,
          hintText:
              AppLocalizations.of(context)?.translate('search here') ?? '',
          prefixIcon: AppIcons.search,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: AppColors.secondary,
        ),
      ),
    );
  }
}
