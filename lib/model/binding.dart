import 'package:ecommerce_app/model/authviewmodel.dart';
import 'package:ecommerce_app/model/control_view_model.dart';
import 'package:ecommerce_app/model/home_view_model.dart';
import 'package:get/get.dart';

class mybindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => HomeController());
    Get.put(homeviewmodel());
  }
}
