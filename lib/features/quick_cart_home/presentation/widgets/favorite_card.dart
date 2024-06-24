import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';
import 'package:quick_cart/core/utlis/media_query_values.dart';
import 'package:quick_cart/features/quick_cart_home/data/models/product_model.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/product_cubit.dart';

class FavoriteCard extends StatelessWidget {
  final Product product;
  const FavoriteCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      height: 127,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 135,
            height: 127,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage('${product.image}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('${product.name}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: AppColors.mainTextColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 18)),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          context
                              .read<ProductCubit>()
                              .removeProduct(product.id!);
                        },
                        icon: const Icon(Icons.delete))
                  ],
                ),
                Expanded(
                  child: Text(
                    '${product.description}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('${product.price}',
                          style: TextStyle(
                              color: AppColors.mainTextColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 18)),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_cart))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
