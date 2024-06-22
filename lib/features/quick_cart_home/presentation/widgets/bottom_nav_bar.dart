import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/home_cubit_states.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/home_cubit.dart';
import '../../../../core/utlis/app_icons.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeCubitStates>(
      builder: (context, state) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: context.read<HomeCubit>().currentIndex,
          onTap: (int index) {
            context.read<HomeCubit>().setTab(index);
          },
          items: [
            BottomNavigationBarItem(
                icon: AppIcons.unselectedHome,
                activeIcon: AppIcons.home,
                label: 'Home'),
            BottomNavigationBarItem(
                icon: AppIcons.unseletedFavorites,
                label: 'Favorites',
                activeIcon: AppIcons.favorites),
            BottomNavigationBarItem(
                icon: AppIcons.unselectedMycart,
                label: 'My Cart',
                activeIcon: AppIcons.mycart),
            BottomNavigationBarItem(
                icon: AppIcons.unselectedProfile,
                label: 'Profile',
                activeIcon: AppIcons.profile),
          ],
        );
      },
    );
  }
}
