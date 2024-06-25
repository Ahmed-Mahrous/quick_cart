import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_cart/core/utlis/app_colors.dart';
import 'package:quick_cart/core/utlis/app_icons.dart';
import 'package:quick_cart/core/utlis/media_query_values.dart';
import 'package:quick_cart/features/quick_cart_home/data/models/product_model.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/cart_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/favorites_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/screens/checkout_screen.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/widgets/dropdown_button.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen(
      {super.key,
      required this.id,
      required this.name,
      required this.price,
      required this.image,
      required this.sellerImage,
      required this.description});
  final int id;
  final String name;
  final String price;
  final String image;
  final String sellerImage;
  final String description;
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
      body: ListView(
        children: [
          SizedBox(
            height: 400,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(name,
                        style: TextStyle(
                            color: AppColors.mainTextColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 18)),
                    const Spacer(),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(price,
                        style: TextStyle(
                            color: AppColors.mainTextColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 18)),
                    const Spacer(),
                    IconButton(
                      icon: AppIcons.favorites,
                      onPressed: () {
                        final newProduct = Product(
                          id: id,
                          name: name,
                          price: price,
                          image: image,
                          sellerImage: sellerImage,
                          description: description,
                        );
                        context
                            .read<FavoritesCubit>()
                            .addFavoritesProduct(newProduct);
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                                padding: EdgeInsets.all(5),
                                behavior: SnackBarBehavior.floating,
                                duration: Duration(seconds: 2),
                                backgroundColor: Colors.grey,
                                content: Center(
                                  child: Text('Product added to favorites'),
                                )));
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Quantity :',
                        style: TextStyle(
                            color: AppColors.mainTextColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 18)),
                    const Spacer(),
                    const DropDownButton(),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('Description :',
                        style: TextStyle(
                            color: AppColors.mainTextColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 18)),
                    Spacer(),
                  ],
                ),
                Text(description,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 14)),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: context.width,
                  child: ElevatedButton(
                      onPressed: () {
                        final newProduct = Product(
                          id: id,
                          name: name,
                          price: price,
                          image: image,
                          sellerImage: sellerImage,
                          description: description,
                        );
                        context.read<CartCubit>().addCartProduct(newProduct);
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                                padding: EdgeInsets.all(5),
                                behavior: SnackBarBehavior.floating,
                                duration: Duration(seconds: 2),
                                backgroundColor: Colors.grey,
                                content: Center(
                                  child: Text('Product added to your cart'),
                                )));
                      },
                      child: const Text(
                        'add to cart',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )),
                ),
                const SizedBox(),
                SizedBox(
                  width: context.width,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CheckoutScreen()));
                      },
                      child: const Text(
                        'Order now',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
