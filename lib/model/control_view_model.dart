import 'package:ecommerce_app/view/pages/homeview.dart';
import 'package:ecommerce_app/view/pages/shopping.dart';
import 'package:ecommerce_app/view/pages/userview.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int _navigatorbar = 0;
  Widget _currentscreen = Homeview();
  get navigatorbar => _navigatorbar;
  get currentscreen => _currentscreen;
  void selectIcon(selectedvalue) {
    _navigatorbar = selectedvalue;
    switch (selectedvalue) {
      case 0:
        {
          _currentscreen = Homeview();
          break;
        }
      case 1:
        _currentscreen = shoppingview();
        break;
      case 2:
        _currentscreen = userview();
    }
    update();
  }
}
