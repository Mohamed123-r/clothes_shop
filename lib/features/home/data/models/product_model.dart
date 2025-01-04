import '../../domain/entities/product_entity.dart';

class ProductModel {
  ProductModel({
    this.id,
    this.name,
    this.price,
    this.imagePath,
    this.description,
    this.material,
    this.subCategory,
    this.categoryId,
    this.category,
  });

  ProductModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    imagePath = json['imagePath'];
    description = json['description'];
    material = json['material'];
    subCategory = json['subCategory'];
    categoryId = json['categoryId'];
    category = json['category'];
  }

  ProductEntity toEntity() {
    return ProductEntity(
        id: id!,
        name: name!,
        price: price!,
        imagePath: imagePath!,
        description: description!,
        material: material!,
        subCategory: subCategory!,
        categoryId: categoryId!,
        category: category!);
  }

  num? id;
  String? name;
  num? price;
  String? imagePath;
  String? description;
  String? material;
  String? subCategory;
  num? categoryId;
  String? category;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['price'] = price;
    map['imagePath'] = imagePath;
    map['description'] = description;
    map['material'] = material;
    map['subCategory'] = subCategory;
    map['categoryId'] = categoryId;
    map['category'] = category;
    return map;
  }
}
