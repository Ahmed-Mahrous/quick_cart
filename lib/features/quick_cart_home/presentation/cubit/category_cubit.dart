import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:quick_cart/features/quick_cart_home/data/models/category_model.dart';
import 'package:quick_cart/features/quick_cart_home/presentation/cubit/category_states.dart';

class CategoryCubit extends Cubit<CategoryProductState> {
  CategoryCubit() : super(CategoryProductInitial());

  Future<void> fetchCategory() async {
    try {
      emit(CategoryLoading());
      final Dio _dio = Dio();
      final response = await _dio.get('https://fakestoreapi.com/products');
      final List<dynamic> data = response.data;
      final products =
          data.map((json) => CategoryProduct.fromJson(json)).toList();
      emit(CategoryLoaded(products));
    } catch (e) {
      emit(CategoryError(e.toString()));
    }
  }
}
