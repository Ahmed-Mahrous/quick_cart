import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/home_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/home_screen.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/onboarding_screen.dart';
import 'config/themes/app_theme.dart';
import 'core/utlis/app_strings.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        theme: appTheme(),
        home: const OnboardingScreen());
  }
}
