import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ecommerce_app/model/authviewmodel.dart';
import 'package:get/get.dart';

class Homepage extends GetWidget<AuthViewModel> {
  List<String> list = ['s', 's', 's'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ),
            ),
            CustomText(
              text: "Categories",
            ),
            Container(
              height: 100,
              child: ListView.separated(
                itemCount: list.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/pngtree-shoes-icon-design-template-illustration-png-image_3177407.jpg',
                              width: 60,
                              ),
                              CustomText(text: list[index],)
                          ],
                        ),),
                    );
                  }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 20,); },),
            ),
            SizedBox(height: 80,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "Best Selling",color: Colors.black,fontSize: 23,),
                CustomText(text: "See all",color: Colors.black,fontSize: 18,fontWeight: FontWeight.normal,),
            ],)
          ],
        ),
      ),
    );
  }
}
