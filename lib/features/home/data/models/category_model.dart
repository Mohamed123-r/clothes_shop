class CategoryModel {
  CategoryModel({
      this.id, 
      this.name, 
      this.imgURL,});

  CategoryModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    imgURL = json['imgURL'];
  }
  num? id;
  String? name;
  String? imgURL;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['imgURL'] = imgURL;
    return map;
  }

}