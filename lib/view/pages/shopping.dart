import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/custom_button.dart';

class shoppingview extends StatelessWidget {
  List<String> names = [
    "Watch",
    "Watch",
    "Watch",
    "Watch",
    "Watch",
  ];
  List<int> prices = [760, 66, 454, 700, 100];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    SizedBox(width: 20,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/71A8igSXNcL._AC_UX569_.jpg',
                        width: 70,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: names[index],
                            fontSize: 17,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomText(
                            text: "\$ " + prices[index].toString(),
                            color: Colors.green,
                            fontSize: 20,
                          ),
                           const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Icon(Icons.add),
                              SizedBox(width: 15,),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: CustomText(text: "1",),
                              ),
                              SizedBox(width: 15,),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Icon(Icons.minimize),
                              )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                );
              },
              itemCount: names.length,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 15,
                );
              }),
        ),
        Container(
          color: Colors.white,
          child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "Total ",
                                      fontSize: 17,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(height: 5,),
                                    CustomText(
                                      text:   "\$ 1000",
                                      color: Colors.green,
                                      fontSize: 22,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(20),
                                width: 180,
                                height: 90,
                                child: custombutton(
                                  fontSize: 18,
                                  onpressed: () {},
                                  text: 'Checkout',
                                ),
                              ),
                            ],
                          ),
                        ),
        ),
      ],
    );
  }
}
