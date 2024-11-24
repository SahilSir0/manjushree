import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manjushree/utils/colors.dart';
import 'package:manjushree/utils/custom_text_style.dart';
import 'package:manjushree/widgets/custom/elevated_button.dart';

import '../../widgets/custom/custom_textfield.dart';

class ProductDescScreen extends StatelessWidget {
  const ProductDescScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 320,
                        child: CustomTextField(
                          suffixIconPath: Icons.search,
                          hint: "search",
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image(
                          image: AssetImage("assets/icons/addtocart.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 400,
                child: Image(
                  image: AssetImage("assets/common/chair.png"),
                ),
              ),
              Text(
                "NPR 60000",
                style: CustomTextStyles.f14W600(),
              ),
              Text(
                "Single seater Royal Sofa with white premium leather",
                style: CustomTextStyles.f12W700(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: SizedBox(
                  width: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: Get.width / 2.3,
                        child: CustomElevatedButton(
                          title: "Add to cart",
                          onTap: () {},
                        ),
                      ),
                      SizedBox(
                        width: Get.width / 2.3,
                        child: CustomElevatedButton(
                          title: "Buy Now",
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                child: Container(
                  height: 270,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.lGrey,
                  ),
                  child: Stack(
                    children: [
                      // Main grey container
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.lGrey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      // White background for the text
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15, top: 15),
                            child: Container(
                              width: 360,
                              height: 40,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 11.0),
                              decoration: BoxDecoration(
                                color: AppColors.extraWhite,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text(
                                "Ratings & Reviews",
                                style: CustomTextStyles.f12W600(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              width: 350.6,
                              height: 80,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 11.0),
                              decoration: BoxDecoration(
                                color: AppColors.extraWhite,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image:
                                        AssetImage("assets/icons/Profile.png"),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "Jonathan Kaminga",
                                          style: CustomTextStyles.f12W300(),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, right: 0.6),
                                        child: SizedBox(
                                          width: 300,
                                          child: Text(
                                            "Product is product is product is product is product is product is  product is product is product",
                                            style: CustomTextStyles.f10W400(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 15.0, left: 15),
                            child: Container(
                              width: 350.6,
                              height: 80,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 11.0),
                              decoration: BoxDecoration(
                                color: AppColors.extraWhite,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image:
                                        AssetImage("assets/icons/Profile.png"),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          "Jonathan Kaminga",
                                          style: CustomTextStyles.f12W300(),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, right: 0.6),
                                        child: SizedBox(
                                          width: 300,
                                          child: Text(
                                            "Product is product is product is product is product is product is  product is product is product",
                                            style: CustomTextStyles.f10W400(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.lGrey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    // Main grey container
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.lGrey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    // White background for the text
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15, top: 15),
                          child: Container(
                            width: 360,
                            height: 40,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 11.0),
                            decoration: BoxDecoration(
                              color: AppColors.extraWhite,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              "Product Description",
                              style: CustomTextStyles.f12W600(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15, top: 15, bottom: 15),
                          child: Container(
                            width: 360,
                            height: 220,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 11.0),
                            decoration: BoxDecoration(
                              color: AppColors.extraWhite,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "- something about product",
                                    style: CustomTextStyles.f10W400(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "- something about product",
                                    style: CustomTextStyles.f10W400(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "- something about product",
                                    style: CustomTextStyles.f10W400(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "- something about product",
                                    style: CustomTextStyles.f10W400(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "- something about product",
                                    style: CustomTextStyles.f10W400(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "- something about product",
                                    style: CustomTextStyles.f10W400(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
