import 'package:flutter/material.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/widgets/product_card.dart';
import '../../../../core/utlis/app_icons.dart';
import '../../data/models/product_model.dart';

Widget buildCategory(String title, List<Product> products) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text(title,
              style:
                  const TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
          const Spacer(),
          const Text('See all',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
          const SizedBox(
            width: 8,
          ),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(4)),
            child: AppIcons.seeAll,
          )
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return ProductCard(
                id: product.id!,
                name: product.name!,
                price: product.price!,
                image: product.image!,
                sellerImage: product.sellerImage!);
          },
        ),
      ),
    ],
  );
}
