import 'package:clothes_shop_app/features/home/domain/entities/category_details_entity.dart';

class CategoryDetailsModel {
  CategoryDetailsModel({
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

  CategoryDetailsModel.fromJson(dynamic json) {
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

  CategoryDetailsEntity toEntity() {
    return CategoryDetailsEntity(
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
}
