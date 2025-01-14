class Items {
  Items({
      this.productId, 
      this.productName, 
      this.quantity, 
      this.price, 
      this.totalPriceForProduct,});

  Items.fromJson(dynamic json) {
    productId = json['productId'];
    productName = json['productName'];
    quantity = json['quantity'];
    price = json['price'];
    totalPriceForProduct = json['totalPriceForProduct'];
  }
  num? productId;
  String? productName;
  num? quantity;
  num? price;
  num? totalPriceForProduct;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productId'] = productId;
    map['productName'] = productName;
    map['quantity'] = quantity;
    map['price'] = price;
    map['totalPriceForProduct'] = totalPriceForProduct;
    return map;
  }

}