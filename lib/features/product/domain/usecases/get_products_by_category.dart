import 'package:store/features/product/domain/repositories/product_repository.dart';
import 'package:store/features/product/domain/entities/product.dart';

class GetProductsByCategory {
  final ProductRepository repository;

  GetProductsByCategory(this.repository);

  Future<List<Product>> execute(String category) async {
    return await repository.GetProductsIn_A_SpecificCategory(category: category);
  }
}
