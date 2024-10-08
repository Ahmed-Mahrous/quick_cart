import 'package:flutter/material.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';

class AppIcons {
  static Widget fashion = Image.asset(
    'assets/icons/Shirt.png',
    width: 34,
    height: 34,
  );
  static Widget women = Image.asset(
    'assets/icons/woman-clothes.png',
    width: 34,
    height: 34,
  );
  static Widget books = Image.asset(
    'assets/icons/Book_Blank.png',
    width: 34,
    height: 34,
  );
  static Widget electronics = Image.asset(
    'assets/icons/plug.png',
    width: 34,
    height: 34,
  );
  static Widget jewelery = Image.asset(
    'assets/icons/diamond.png',
    width: 34,
    height: 34,
  );
  static Widget unseletedFavorites = Icon(
    Icons.favorite_border,
    size: 30,
    color: AppColors.primary,
  );
  static Widget favoriteIcon = const Icon(
    Icons.favorite,
    size: 30,
  );
  static Widget home = const Icon(
    Icons.home_rounded,
    size: 30,
  );
  static Widget unselectedMycart = const Icon(
    Icons.shopping_cart_outlined,
    size: 30,
  );
  static Widget unselectedSettings = const Icon(
    Icons.settings_outlined,
    size: 30,
  );
  static Widget mycart = Icon(
    Icons.shopping_cart,
    size: 30,
    color: AppColors.primary,
  );
  static Widget unselectedHome = Icon(
    Icons.home_outlined,
    size: 30,
    color: AppColors.primary,
  );
  static Widget seeAll = Icon(
    Icons.arrow_forward_ios,
    size: 16,
    color: AppColors.primary,
  );
  static Widget favorites = Icon(
    Icons.favorite,
    size: 30,
    color: AppColors.primary,
  );

  static Widget settings = Icon(
    Icons.settings,
    size: 30,
    color: AppColors.primary,
  );
  static Widget search = Icon(
    Icons.search,
    size: 25,
    color: AppColors.primary,
  );
  static Widget notification = Image.asset(
    'assets/icons/notification.png',
    width: 30,
    height: 30,
  );
  static Widget filter = Image.asset(
    'assets/icons/filter.png',
    width: 18,
    height: 18,
  );
  static Widget quickCart = Image.asset(
    'assets/icons/quickcart.png',
    height: 40,
    width: 40,
  );
  static Widget qoogle = Image.asset(
    'assets/icons/google.webp',
    color: Colors.white,
    height: 40,
    width: 40,
  );
}
