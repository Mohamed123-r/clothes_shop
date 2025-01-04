
import '../../features/home/domain/entities/product_entity.dart';

ProductEntity getDummyProduct() {
  return const ProductEntity(
    id: 1,
    name: "name",
    imagePath: "image",
    price: 0,
    description: "description",
    material: "material",
    subCategory: "subCategory",
    categoryId: 0,
    category: "category",
  );
}


List<ProductEntity> getDummyProducts() {
  List<ProductEntity> products = [];
  for (int i = 0; i < 10; i++) {
    products.add(getDummyProduct());
  }
  return products;
}