class category_model {
  String? name, image;
  category_model({this.image, this.name});

  category_model.fromJson(Map<dynamic, dynamic>? map) {
    if (map == null) {
      return;
    }
    image = map['image'];
    name = map['name'];
  }

  toJson() {
    return {'image': image, 'name': name};
  }
}
