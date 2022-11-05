import 'package:ecommerce_app/model/authviewmodel.dart';
import 'package:ecommerce_app/view/auth/loginpage.dart';
import 'package:ecommerce_app/view/pagetwo.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ControlView extends GetWidget<AuthViewModel> {
  final AuthViewModel authcontroller = Get.put(AuthViewModel());
  @override
  Widget build(BuildContext context) {
    return Obx((() => authcontroller.user != null ? pageTwo():loginpage()));
  }
}