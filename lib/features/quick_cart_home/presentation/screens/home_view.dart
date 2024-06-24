import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/home_states.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/widgets/carousel_slider_withdots.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/widgets/categories.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/widgets/search.dart';
import '../cubit/home_cubit.dart';
import '../widgets/build_category.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<HomeCubit, HomeCubitStates>(
        builder: (context, state) {
          if (state is ProductLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProductError) {
            Center(
              child: Text(state.message),
            );
          }
          return ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              const Search(),
              const SizedBox(
                height: 20,
              ),
              CarouselSliderWithDots(),
              const Text('Categories',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
              const SizedBox(
                height: 20,
              ),
              const Categories(),
              const SizedBox(
                height: 20,
              ),
              buildCategory(
                  'Best Selling',
                  BlocProvider.of<HomeCubit>(context)
                      .productCategory!
                      .bestSelling!),
              buildCategory(
                  'New Arrival',
                  BlocProvider.of<HomeCubit>(context)
                      .productCategory!
                      .newArrival!),
              buildCategory(
                  'Recommended For You',
                  BlocProvider.of<HomeCubit>(context)
                      .productCategory!
                      .recommendedForYou!)
            ],
          );
        },
      ),
    );
  }
}
