import 'package:clothes_shop_app/features/home/domain/entities/offer_entity.dart';

class OfferModel {
  OfferModel({
      this.id, 
      this.image,});

  OfferModel.fromJson(dynamic json) {
    id = json['id'];
    image = json['image'];
  }

  OfferEntity toEntity() {
    return OfferEntity(
      id: id!,
      image: image!
    );
  }
  num? id;
  String? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['image'] = image;
    return map;
  }

}