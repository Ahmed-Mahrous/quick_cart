import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_cart/core/utlis/app_icons.dart';
import 'package:quick_cart/core/utlis/media_query_values.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/home_cubit_states.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/widgets/bottom_nav_bar.dart';
import '../cubit/home_cubit.dart';
import 'home_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..fetchProducts(),
      child: Scaffold(
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
            child: BlocBuilder<HomeCubit, HomeCubitStates>(
              builder: (context, state) {
                switch (context.read<HomeCubit>().currentIndex) {
                  case 0:
                    return const HomeView();
                  case 1:
                    return const Center(child: Text('Favorites'));
                  case 2:
                    return const Center(child: Text('My Cart'));
                  case 3:
                    return const Center(child: Text('Profile'));
                  default:
                    return const HomeView();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
