import 'package:bloc/bloc.dart';
import 'package:quick_cart/features/quick_cart_home/data/models/product_model.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/product_states.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  void addProduct(Product product) {
    if (state is ItemLoaded) {
      final currentState = state as ItemLoaded;
      final updatedProducts = Set<Product>.from(currentState.products)
        ..add(product);
      emit(ItemLoaded(updatedProducts));
      print('1');
    } else {
      emit(ItemLoaded({product}));
      print('2');
    }
  }

  void removeProduct(int id) {
    if (state is ItemLoaded) {
      final currentState = state as ItemLoaded;
      final updatedProducts =
          currentState.products.where((product) => product.id != id).toSet();
      emit(ItemLoaded(updatedProducts));
    }
  }

  void loadProducts() {
    emit(ItemLoaded({}));
    print('3'); // Emit an empty list initially
  }
}
