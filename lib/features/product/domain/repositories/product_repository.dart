import 'package:store/features/product/data/datasources/product_remote_data_source.dart';
import 'package:store/features/product/domain/entities/product.dart';

abstract class ProductRepository {
  Future<List<Product>> GetProductsIn_A_SpecificCategory({required String category});
  Future<List<Product>> getAllProducts();
  Future<Product> getProductDetails(int productId);
}

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Product>> getAllProducts() async {
    return await remoteDataSource.getAllProducts();
  }
@override
  Future<List<Product>> GetProductsIn_A_SpecificCategory({required String category}) async {
    return await remoteDataSource.GetProductsIn_A_SpecificCategory(category: category);
  }
  @override
  Future<Product> getProductDetails(int productId) async {
    return await remoteDataSource.getProductDetails(productId);
  }
}
