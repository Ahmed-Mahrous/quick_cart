import 'package:quick_cart/features/quick_cart_home/data/models/product_model.dart';

class HomeCubitStates {}

class InitialState extends HomeCubitStates {}

class NavBarViewState extends HomeCubitStates {}

class CarouselSliderState extends HomeCubitStates {}

class ProductLoading extends HomeCubitStates {}

class ProductLoaded extends HomeCubitStates {}

class ProductAdded extends HomeCubitStates {
  final List<Product> list;
  ProductAdded(this.list);
}

class ProductError extends HomeCubitStates {
  final String message;

  ProductError(this.message);
}
