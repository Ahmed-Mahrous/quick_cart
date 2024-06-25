import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/favorites_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/home_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/location_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/home_screen.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/onboarding_screen.dart';
import 'config/themes/app_theme.dart';
import 'core/utlis/app_strings.dart';
import 'features/quick_cart_home/presentation/cubit/cart_cubit.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit()..fetchProducts(),
        ),
        BlocProvider(
            create: (context) => FavoritesCubit()..loadFavoritesProducts()),
        BlocProvider(create: (context) => CartCubit()..loadCartProducts()),
        BlocProvider(create: (context) => LocationCubit())
      ],
      child: MaterialApp(
          title: AppStrings.appName,
          debugShowCheckedModeBanner: false,
          theme: appTheme(),
          home: const OnboardingScreen()),
    );
  }
}
