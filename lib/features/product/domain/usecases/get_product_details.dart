import '../entities/product.dart';
import '../repositories/product_repository.dart';


class GetProductDetails {
  final ProductRepository repository;

  GetProductDetails(this.repository);

  Future<Product> call(int productId) async {
    return await repository.getProductDetails(productId);
  }
}
