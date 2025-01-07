import '../../features/home/domain/entities/category_entity.dart';
import '../../features/home/domain/entities/offer_entity.dart';
import '../../features/home/domain/entities/product_entity.dart';

ProductEntity getDummyProduct() {
  return const ProductEntity(
    id: 1,
    name: "name",
    imagePath:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3wxJ0c-jC6VcDASO9aiDWD9zWAeJLKrS5gg&s",
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
  for (int i = 0; i < 30; i++) {
    products.add(getDummyProduct());
  }
  return products;
}

OfferEntity getDummyOffer() {
  return OfferEntity(
    id: 1,
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3wxJ0c-jC6VcDASO9aiDWD9zWAeJLKrS5gg&s',
  );
}

List<OfferEntity> getDummyOffers() {
  List<OfferEntity> offers = [];
  for (int i = 0; i < 30; i++) {
    offers.add(getDummyOffer());
  }
  return offers;
}

CategoryEntity getDummyCategory() {
  return CategoryEntity(
      id: 3,
      title: '',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3wxJ0c-jC6VcDASO9aiDWD9zWAeJLKrS5gg&s');
}

List<CategoryEntity> getDummyCategories() {
  List<CategoryEntity> offers = [];
  for (int i = 0; i < 30; i++) {
    offers.add(getDummyCategory());
  }
  return offers;
}
