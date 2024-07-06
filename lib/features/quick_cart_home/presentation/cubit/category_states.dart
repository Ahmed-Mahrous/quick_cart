import 'package:quick_cart/features/quick_cart_home/data/models/category_model.dart';

abstract class CategoryProductState {}

class CategoryProductInitial extends CategoryProductState {}

class CategoryLoaded extends CategoryProductState {
  final List<CategoryProduct> products;
  CategoryLoaded(this.products);
}

class CategoryLoading extends CategoryProductState {}

class CategoryError extends CategoryProductState {
  final String message;

  CategoryError(this.message);
}
