class ShopModel {

  ShopModel ( {
    this.id,
    this.image,
    this.name,
    this.category,
  } );

  final int? id;
  final String? image;
  final String? name;
  final String? category;

  @override
  String toString() {
    return "ShopModel id $id, image $image, name $name, category $category" ?? super.toString();
  }
}