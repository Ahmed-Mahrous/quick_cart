import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/product_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/product_states.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/widgets/favorite_card.dart';

class FavoritesView extends StatefulWidget {
  const FavoritesView({super.key});

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state is ItemLoaded) {
            if (state.products.isEmpty) {
              return const Center(child: Text('No products yet'));
            } else {
              return ListView.builder(
                  itemCount: state.products.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        FavoriteCard(
                          product: state.products.elementAt(index),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Divider(
                          thickness: 0.2,
                          color: AppColors.primary,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    );
                  });
            }
          } else if (state is ProductInitial) {
            return const Center(
                child: Center(
              child: Text('No products yet'),
            ));
          } else {
            return const Center(child: Text('Something went wrong!'));
          }
        },
      ),
    ));
  }
}
