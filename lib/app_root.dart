import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/category_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/favorites_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/home_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/lang_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/location_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/lang/lang.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/onboarding_screen.dart';
import 'config/themes/app_theme.dart';
import 'core/utlis/app_strings.dart';
import 'features/quick_cart_home/presentation/cubit/cart_cubit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
        BlocProvider(create: (context) => HomeCubit()..fetchProducts()),
        BlocProvider(
          create: (context) => CategoryCubit()..fetchCategory(),
        ),
        BlocProvider(
            create: (context) => FavoritesCubit()..loadFavoritesProducts()),
        BlocProvider(create: (context) => CartCubit()..loadCartProducts()),
        BlocProvider(create: (context) => LocationCubit()),
        BlocProvider(create: (context) => LangCubit()),
      ],
      child: BlocBuilder<LangCubit, Locale>(
        builder: (context, locale) {
          return MaterialApp(
              locale: locale,
              supportedLocales: const [
                Locale('en', ''), // English
                Locale('de', ''), // German
              ],
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              title: AppStrings.appName,
              debugShowCheckedModeBanner: false,
              theme: appTheme(),
              home: const OnboardingScreen());
        },
      ),
    );
  }
}
