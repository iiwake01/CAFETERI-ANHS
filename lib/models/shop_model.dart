import 'package:cafeterianhs/utils/shop_category_enum.dart';

class ShopModel {
  ShopModel({
    this.id,
    this.image,
    this.name,
    this.category,
    this.price,
    this.isLikes,
  });

  final int? id;
  final String? image;
  final String? name;
  final ShopCategoryEnum? category;
  final String? price;
  bool? isLikes;

  @override
  String toString() {
    return "ShopModel id $id, image $image, name $name, category $category, price $price, isLikes $isLikes" ?? super.toString();
  }
}