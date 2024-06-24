import 'package:quick_cart/features/quick_cart_home/data/models/product_model.dart';

abstract class FavoritesState {}

class FavoritesInitial extends FavoritesState {}

class FavoriteItemLoaded extends FavoritesState {
  final Set<Product> products;

  FavoriteItemLoaded(this.products);
}
