import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_cart/core/utlis/app_icons.dart';
import 'package:quick_cart/core/utlis/media_query_values.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/lang_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/cart_view.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/favorites_view.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/settings_view.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/widgets/bottom_nav_bar.dart';
import '../cubit/home_cubit.dart';
import 'home_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: context.width,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppIcons.quickCart,
            const SizedBox(
              width: 8,
            ),
            const Text(
              'QuickCart',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
        child: SafeArea(
          child: Builder(
            builder: (context) {
              final stateA = context.watch<HomeCubit>().state;
              final stateB = context.watch<LangCubit>().state;
              switch (context.read<HomeCubit>().currentIndex) {
                case 0:
                  return const HomeView();
                case 1:
                  return const FavoritesView();
                case 2:
                  return const CartView();
                case 3:
                  return const SettingsView();
                default:
                  return const HomeView();
              }
            },
          ),
        ),
      ),
    );
  }
}
