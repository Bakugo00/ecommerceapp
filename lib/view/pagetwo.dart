import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ecommerce_app/model/authviewmodel.dart';
import 'package:get/get.dart';
class pageTwo extends GetWidget<AuthViewModel> {
  const pageTwo({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("pagetwo"),),
      body: Container(
        height: 100,
        padding: EdgeInsets.all(12.0),
        child: MaterialButton(onPressed: (){
          controller.signout();
        },
        child: Text("sign-out"),
        ),
      ),
    );
  }
}