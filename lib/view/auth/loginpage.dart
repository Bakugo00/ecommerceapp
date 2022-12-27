import 'package:ecommerce_app/model/authviewmodel.dart';
import 'package:ecommerce_app/view/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_button.dart';

class loginpage extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30, top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(fontSize: 30.0),
                  ),
                  MaterialButton(
                    onPressed: (() => Get.offAll(() => registerView())),
                    child: Text(
                      "Signup",
                      style: TextStyle(
                          color: Color.fromARGB(255, 74, 195, 104),
                          fontSize: 16.0),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "sign-in to continue",
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
              SizedBox(
                height: 100,
              ),
              Text("Email"),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration:
                    InputDecoration(hintText: " quelquechose@gmail.com "),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(""), Text("Forgot password ?")],
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: MaterialButton(
                  onPressed: controller.signin,
                  child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                  color: Color.fromARGB(255, 74, 195, 104),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  padding: EdgeInsets.all(10.0),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    "-OR-",
                    style: TextStyle(fontSize: 20),
                  )),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {
                  controller.googleSignInMethod();
                },
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      child: Image.asset(
                        'assets/images/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png',
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      "sign in with google",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  controller.signInWithFacebook();
                },
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      child: Image.asset(
                        'assets/images/facebook-logo-icon-facebook-icon-png-images-icons-and-png-backgrounds-1.png',
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      "sign in with facebook",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
