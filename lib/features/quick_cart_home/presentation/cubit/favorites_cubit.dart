import 'package:bloc/bloc.dart';
import 'package:quick_cart/features/quick_cart_home/data/models/product_model.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/favorites_states.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit() : super(FavoritesInitial());

  void addFavoritesProduct(Product product) {
    if (state is FavoriteItemLoaded) {
      final currentState = state as FavoriteItemLoaded;
      final updatedProducts = Set<Product>.from(currentState.products)
        ..add(product);
      emit(FavoriteItemLoaded(updatedProducts));
    } else {
      emit(FavoriteItemLoaded({product}));
    }
  }

  void removeFavoritesProduct(int id) {
    if (state is FavoriteItemLoaded) {
      final currentState = state as FavoriteItemLoaded;
      final updatedProducts =
          currentState.products.where((product) => product.id != id).toSet();
      emit(FavoriteItemLoaded(updatedProducts));
    }
  }

  void loadFavoritesProducts() {
    emit(FavoriteItemLoaded({}));
    // Emit an empty list initially
  }
}
