import 'package:ecommerce_app/model/categories_model.dart';
import 'package:ecommerce_app/model/product_model.dart';
import 'package:ecommerce_app/Core/services/home_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class homeviewmodel extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<category_model> get categoryModel => _categorymodel;
  List<category_model> _categorymodel = [];
  List<Product> get products => _products;
  List<Product> _products = [];

  homeviewmodel() {
    getcategory();
    getBestSellingProducts();
  }

  getcategory() async {
    _loading.value = true;
    await HomeService().getCategory().then((value) {
      for (int i = 0; i < value.length; i++) {
        _categorymodel.add(
            category_model.fromJson(value[i].data() as Map<dynamic, dynamic>));
        _loading.value = false;
      }
      update();
    });
  }

  getBestSellingProducts() async {
    _loading.value = true;
    await HomeService().getProduct().then((value) {
      for (var i = 0; i < value.length; i++) {
        _products
            .add(Product.fromJson(value[i].data() as Map<dynamic, dynamic>));
        _loading.value = false;
      }
      print(_products.length);
      update();
    });
  }
}
