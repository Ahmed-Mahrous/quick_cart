import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/cart_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/cart_states.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/favorites_states.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/widgets/cart_card.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: BlocBuilder<CartCubit, CartProductState>(
        builder: (context, state) {
          if (state is CartItemLoaded) {
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
                        CartCard(
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
          } else if (state is FavoritesInitial) {
            return const Center(
                child: Center(
              child: Text('No products yet'),
            ));
          } else {
            return const Center(child: Text('Something went wrong'));
          }
        },
      ),
    ));
  }
}
