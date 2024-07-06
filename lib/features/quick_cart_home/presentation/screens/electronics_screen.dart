import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';
import 'package:quick_cart/core/utlis/app_icons.dart';
import 'package:quick_cart/core/utlis/media_query_values.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/category_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/category_states.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/widgets/category_card.dart';

class ElectronicsScreen extends StatelessWidget {
  const ElectronicsScreen({super.key});

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
      body: BlocBuilder<CategoryCubit, CategoryProductState>(
        builder: (context, state) {
          if (state is CategoryLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is CategoryLoaded) {
            return ListView.builder(
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                final product = state.products[index];
                if (product.category == "electronics") {
                  return Column(
                    children: [
                      CategoryCard(product: product),
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
                } else {
                  return Container();
                }
              },
            );
          } else if (state is CategoryError) {
            return Center(
              child: Text('${state.message}'),
            );
          } else {
            return Center(
              child: Text('No products'),
            );
          }
        },
      ),
    );
  }
}
