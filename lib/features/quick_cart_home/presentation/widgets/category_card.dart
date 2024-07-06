import 'package:flutter/material.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';
import 'package:quick_cart/core/utlis/media_query_values.dart';
import 'package:quick_cart/features/quick_cart_home/data/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  final CategoryProduct product;
  const CategoryCard({
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
                image: NetworkImage(product.image),
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
                    Expanded(
                      child: Text(product.title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: AppColors.mainTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 18)),
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.favorite))
                  ],
                ),
                Expanded(
                  child: Text(
                    product.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text('EGP ${product.price}',
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
