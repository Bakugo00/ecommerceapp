import 'package:ecommerce_app/model/authviewmodel.dart';
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
                  Text(
                    "Signup",
                    style: TextStyle(
                        color: Color.fromARGB(255, 74, 195, 104),
                        fontSize: 16.0),
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
              TextField(
                decoration:
                    InputDecoration(hintText: " quelquechose@gmail.com "),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text("Password"),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(hintText: " ******** "),
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
              custombutton(
                text: "sign in ",
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
                        'assets/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png',
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
                  controller.FacesigninMethod();
                },
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      child: Image.asset(
                        'assets/facebook-logo-icon-facebook-icon-png-images-icons-and-png-backgrounds-1.png',
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
