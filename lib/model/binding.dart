import 'package:ecommerce_app/model/authviewmodel.dart';
import 'package:get/get.dart';

class mybindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
  }
}
