import 'package:bloc/bloc.dart';
import 'package:store/features/product/domain/entities/product.dart';
import 'package:store/features/product/presentation/cubit/product_state.dart';
import 'package:store/features/product/domain/repositories/product_repository.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepository repository;

  ProductCubit(this.repository) : super(ProductInitial());

  Future<void> fetchProducts(String category) async {
    emit(ProductLoading());  // Emit loading state
    try {
      final products = category == "all"
          ? await repository.getAllProducts()
          : await repository.GetProductsIn_A_SpecificCategory(category: category);
      emit(ProductLoaded(products));  // Emit loaded state with the products
    } catch (e) {
      emit(ProductError("Failed to load products: $e"));  // Emit error state
    }
  }
}
