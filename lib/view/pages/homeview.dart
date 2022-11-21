import 'package:ecommerce_app/model/home_view_model.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ecommerce_app/model/authviewmodel.dart';
import 'package:get/get.dart';

class Homeview extends GetWidget<AuthViewModel> {
  List<String> list = [''];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<homeviewmodel>(
      builder: (controller) => controller.loading.value
          ? Center(child: CircularProgressIndicator())
          : Scaffold(
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Container(
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
                      SizedBox(
                        height: 20,
                      ),
                      CustomText(
                        text: "Categories",
                      ),
                      Container(
                        height: 100,
                        child: GetBuilder<homeviewmodel>(
                          builder: (controller) => Container(
                            child: ListView.separated(
                              itemCount: controller.categoryModel.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Image.network(
                                          controller
                                              .categoryModel[index].image!,
                                          width: 30,
                                        ),
                                        CustomText(
                                          text: controller
                                              .categoryModel[index].name!,
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return SizedBox(
                                  width: 20,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      listviewproducts()
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  Widget listviewproducts() {
    return GetBuilder<homeviewmodel>(
        builder: (controller) => Container(
              height: 400,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset.fromDirection(4, -10),
                                      color: Colors.grey.shade100,
                                      blurRadius: 10)
                                ],
                                borderRadius: BorderRadius.circular(50)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                controller.products[index].image!,
                                height: 220,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomText(
                            text: controller.products[index].name!,
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 250,
                            child: CustomText(
                              text: controller.products[index].description!,
                              fontWeight: FontWeight.w200,
                              fontSize: 14,
                              maxLine: 1,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // CustomText(
                          //   text: controller.products[index].price!,
                          //   fontWeight: FontWeight.normal,
                          //   color: Colors.green,
                          //   fontSize: 20,
                          // ),
                        ]);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                  itemCount: controller.products.length),
            ));
  }
}
