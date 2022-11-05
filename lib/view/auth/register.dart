import 'package:ecommerce_app/model/authviewmodel.dart';
import 'package:ecommerce_app/view/auth/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class registerView extends GetWidget<AuthViewModel> {
  const registerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Get.offAll(() => loginpage()),
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.0,
              ),
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 80.0,
              ),
              Text("Name"),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: " Name "),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text("Email"),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: " quelquechose@gmail.com "),
                controller: controller.email,
              ),
              SizedBox(
                height: 40.0,
              ),
              Text("Password"),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: " ******** "),
                controller: controller.password,
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: MaterialButton(
                  onPressed: controller.signup,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Signup",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  color: Color.fromARGB(255, 74, 195, 104),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  padding: EdgeInsets.all(10.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
