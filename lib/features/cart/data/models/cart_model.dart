import 'Items.dart';

class CartModel {
  CartModel({
      this.userAppId, 
      this.items, 
      this.totalAmount,});

  CartModel.fromJson(dynamic json) {
    userAppId = json['userAppId'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
    totalAmount = json['totalAmount'];
  }
  String? userAppId;
  List<Items>? items;
  num? totalAmount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userAppId'] = userAppId;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    map['totalAmount'] = totalAmount;
    return map;
  }

}