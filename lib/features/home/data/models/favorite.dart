import 'package:equatable/equatable.dart';

class Favorite extends Equatable {
  final int? productId;
  final bool isFavorite;

  const Favorite({this.productId,required this.isFavorite});

  factory Favorite.fromJson(Map<String, dynamic> json) => Favorite(
        productId: json['productId'] as int?,
        isFavorite: json['is_Favorite'] as bool,
      );

  Map<String, dynamic> toJson() => {
        'productId': productId,
        'is_Favorite': isFavorite,
      };

  @override
  List<Object?> get props => [productId, isFavorite];
}
