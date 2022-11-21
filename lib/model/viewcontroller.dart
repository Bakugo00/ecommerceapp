import 'package:ecommerce_app/model/authviewmodel.dart';
import 'package:ecommerce_app/model/control_view_model.dart';
import 'package:ecommerce_app/view/auth/loginpage.dart';
import 'package:ecommerce_app/view/pages/homeview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlView extends GetWidget<AuthViewModel> {
  final AuthViewModel authcontroller = Get.put(AuthViewModel());
  @override
  Widget build(BuildContext context) {
    return Obx((() => authcontroller.user == null
        ? loginpage()
        : GetBuilder<HomeController>(
            builder: ((controller) => Scaffold(
                  body: controller.currentscreen,
                  bottomNavigationBar: _bottomnavigationbar(),
                )))));
  }
}

_bottomnavigationbar() {
  return GetBuilder(
    init: HomeController(),
    builder: (controller) => BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Image.asset(
            'assets/cottage.png',
            height: 20,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Shopping carte',
          icon: Image.asset(
            'assets/icons8-shopping-cart-96.png',
            height: 20,
          ),
        ),
        BottomNavigationBarItem(
          label: 'User account',
          icon: Image.asset(
            'assets/icons8-account-96.png',
            height: 20,
          ),
        ),
      ],
      currentIndex: controller.navigatorbar,
      onTap: (index) {
        controller.selectIcon(index);
      },
      elevation: 0,
      backgroundColor: Colors.white,
    ),
  );
}
