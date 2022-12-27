import 'package:ecommerce_app/model/binding.dart';
import 'package:ecommerce_app/model/viewcontroller.dart';
import 'package:ecommerce_app/view/auth/loginpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: mybindings(),
      debugShowCheckedModeBanner: false,
      home: ControlView(),
      theme: ThemeData(
        fontFamily: 'sourcesans'
      ),
    );
  }
}
