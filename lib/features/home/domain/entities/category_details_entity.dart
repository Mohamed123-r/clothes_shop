class CategoryDetailsEntity {
  final num id;
  final String name;
  final num price;
  final String imagePath;
  final String description;
  final String material;
  final String subCategory;
  final num categoryId;
  final String category;

  CategoryDetailsEntity(
      {required this.id,
      required this.name,
      required this.price,
      required this.imagePath,
      required this.description,
      required this.material,
      required this.subCategory,
      required this.categoryId,
      required this.category});
}
