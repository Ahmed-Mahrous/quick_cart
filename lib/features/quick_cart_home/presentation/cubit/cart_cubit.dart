import 'package:bloc/bloc.dart';
import 'package:quick_cart/features/quick_cart_home/data/models/product_model.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/cart_states.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/favorites_states.dart';

class CartCubit extends Cubit<CartProductState> {
  CartCubit() : super(CartProductInitial());

  void addCartProduct(Product product) {
    if (state is CartItemLoaded) {
      final currentState = state as CartItemLoaded;
      final updatedProducts = Set<Product>.from(currentState.products)
        ..add(product);
      emit(CartItemLoaded(updatedProducts));
      print('1');
    } else {
      emit(CartItemLoaded({product}));
      print('2');
    }
  }

  void removeCartProduct(int id) {
    if (state is CartItemLoaded) {
      final currentState = state as CartItemLoaded;
      final updatedProducts =
          currentState.products.where((product) => product.id != id).toSet();
      emit(CartItemLoaded(updatedProducts));
    }
  }

  void loadCartProducts() {
    emit(CartItemLoaded({}));
    print('3'); // Emit an empty list initially
  }
}
