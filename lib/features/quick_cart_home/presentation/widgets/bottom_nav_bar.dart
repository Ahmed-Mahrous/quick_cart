import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/home_states.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/home_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/lang/lang.dart';
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
                label: AppLocalizations.of(context)?.translate('home') ?? ''),
            BottomNavigationBarItem(
                icon: AppIcons.unseletedFavorites,
                label:
                    AppLocalizations.of(context)?.translate('favorites') ?? '',
                activeIcon: AppIcons.favorites),
            BottomNavigationBarItem(
                icon: AppIcons.unselectedMycart,
                label: AppLocalizations.of(context)?.translate('my cart') ?? '',
                activeIcon: AppIcons.mycart),
            BottomNavigationBarItem(
                icon: AppIcons.unselectedSettings,
                label:
                    AppLocalizations.of(context)?.translate('settings') ?? '',
                activeIcon: AppIcons.settings),
          ],
        );
      },
    );
  }
}
