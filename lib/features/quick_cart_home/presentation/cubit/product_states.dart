import 'package:quick_cart/features/quick_cart_home/data/models/product_model.dart';

abstract class ProductState {}

class ProductInitial extends ProductState {}

class LoadingProduct extends ProductState {}

class ItemLoaded extends ProductState {
  final Set<Product> products;

  ItemLoaded(this.products);
}
