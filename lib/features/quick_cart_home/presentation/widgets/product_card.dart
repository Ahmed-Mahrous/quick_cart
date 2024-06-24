import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_cart/features/quick_cart_home/data/models/product_model.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/cart_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/favorites_cubit.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/widgets/alert_widget.dart';
import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_icons.dart';

class ProductCard extends StatefulWidget {
  final int id;
  final String name;
  final String price;
  final String image;
  final String sellerImage;
  final String description;

  const ProductCard(
      {super.key,
      required this.id,
      required this.name,
      required this.price,
      required this.image,
      required this.sellerImage,
      required this.description});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 135,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: 135,
                    height: 127,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(widget.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: AppIcons.favorites,
                        onPressed: () {
                          final newProduct = Product(
                            id: widget.id,
                            name: widget.name,
                            price: widget.price,
                            image: widget.image,
                            sellerImage: widget.sellerImage,
                            description: widget.description,
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
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(widget.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: AppColors.mainTextColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 18)),
              Expanded(
                child: Row(
                  children: [
                    Text(widget.price,
                        style: TextStyle(
                            color: AppColors.mainTextColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 18)),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        final newProduct = Product(
                          id: widget.id,
                          name: widget.name,
                          price: widget.price,
                          image: widget.image,
                          sellerImage: widget.sellerImage,
                          description: widget.description,
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
                      icon: AppIcons.mycart,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 15,
        )
      ],
    );
  }
}
