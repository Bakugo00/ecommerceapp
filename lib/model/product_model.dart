class Product {
  String? name, image, description, color, size, price;
  Product(
      {this.name,
      this.image,
      this.description,
      this.color,
      this.size,
      this.price});
  Product.fromJson(Map<dynamic, dynamic>? map) {
    if (map == null) {
      return;
    }
    name = map['name'];
    image = map['image'];
    description = map['description'];
    color = map['color'];
    size = map['size'];
    price = map['price'];
  }
  toJson() {
    return {
      'name': name,
      'image': image,
      'description': description,
      'color': color,
      'size': size,
      'price': price
    };
  }
}
