class ShopModel {
  ShopModel({this.id, this.image, this.name, this.category, this.price});

  final int? id;
  final String? image;
  final String? name;
  final String? category;
  final String? price;

  @override
  String toString() {
    return "ShopModel id $id, image $image, name $name, category $category, price $price" ??
        super.toString();
  }
}
