class ProductEntity {
  final num id;
  final String name;
  final num price;
  final String imagePath;
  final String description;
  final String material;
  final String subCategory;
  final num categoryId;
  final String category;

  const ProductEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.material,
    required this.subCategory,
    required this.categoryId,
    required this.description,
    required this.category,
  });
}
