import 'dart:ffi';

import 'package:ecommerce_app/Core/services/Database/carte_data_helper.dart';
import 'package:ecommerce_app/model/product_model.dart';
import 'package:ecommerce_app/view/widgets/custom_button.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class detailes extends StatelessWidget {
  Product? product;

  detailes({this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 270,
                child: Image.network(
                  product!.image!,
                  fit: BoxFit.fill,
                )),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: CustomText(
                          text: product!.name!,
                          fontSize: 26,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    style: BorderStyle.solid,
                                    color: Colors.black12),
                                borderRadius: BorderRadius.circular(15)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8.0),
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(text: "Size"),
                                CustomText(
                                  text: "XL",
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    style: BorderStyle.solid,
                                    color: Colors.black12),
                                borderRadius: BorderRadius.circular(15)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8.0),
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(text: "color"),
                                Container(
                                  width: 30,
                                  height: 20,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomText(
                        text: 'Details',
                        fontSize: 18,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomText(
                        text: product!.description!,
                        fontSize: 18,
                        height: 2.5,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "PRICE ",
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CustomText(
                        text: product!.price!,
                        color: Colors.greenAccent,
                        fontSize: 22,
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 180,
                    height: 90,
                    child: custombutton(
                      onpressed: () {},
                      text: 'ADD',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
