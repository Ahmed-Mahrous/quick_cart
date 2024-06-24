import 'package:quick_cart/features/quick_cart_home/data/models/product_model.dart';

abstract class CartProductState {}

class CartProductInitial extends CartProductState {}

class CartItemLoaded extends CartProductState {
  final Set<Product> products;

  CartItemLoaded(this.products);
}
