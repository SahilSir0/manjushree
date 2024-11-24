import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manjushree/utils/custom_text_style.dart';
import 'package:manjushree/views/dashboard/bed_screen.dart';
import 'package:manjushree/views/dashboard/cabinet_screen.dart';
import 'package:manjushree/views/dashboard/chair_screen.dart';
import 'package:manjushree/views/dashboard/dining_screen.dart';
import 'package:manjushree/views/dashboard/product_desc_screen.dart';
import 'package:manjushree/views/dashboard/profile_screen.dart';
import 'package:manjushree/views/dashboard/sofa_screen.dart';
import 'package:manjushree/views/dashboard/wardrobe_screen.dart';
import 'package:manjushree/widgets/custom/custom_textfield.dart';
import '../../controller/dashboard/home_screen_controller.dart';
import '../../utils/colors.dart';
import 'table_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final c = Get.put(HomeScreenController());
  final List<String> imgList = [
    'assets/common/1.png',
    'assets/common/2.png',
    'assets/common/3.png',
    'assets/common/4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: AppColors.extraWhite,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "MANJUSHREE FURNITURE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        getGreeting(),
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, top: 10),
                    child: SizedBox(
                      width: 50,
                      height: 100,
                      child: Image.network(
                          "https://cdn-icons-png.flaticon.com/512/219/219983.png"),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 0.0, left: 15, right: 15),
          child: Column(
            children: [
              CustomTextField(
                suffixIconPath: Icons.search,
                hint: "search",
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.text,
              ),
              const SizedBox(height: 20), // Spacing before slider

              // Carousel Slider widget
              CarouselSlider(
                options: CarouselOptions(
                  height: 150.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0, // Aspect ratio adjustment
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
                items: imgList.map((item) {
                  return Container(
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(item),
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text("Categories",
                          style: CustomTextStyles.f12W600())),
                ],
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Get.to(() => Sofa());
                        },
                        child: const CategoryButton(
                            name: "Sofa", icon: "assets/icons/sofa.png")),
                    const SizedBox(width: 7),
                    InkWell(
                      onTap: () {
                        Get.to(() => TableScreen());
                      },
                      child: const CategoryButton(
                          name: "Table", icon: "assets/icons/table.png"),
                    ),
                    const SizedBox(width: 7),
                    InkWell(
                        onTap: () {
                          Get.to(() => BedScreen());
                        },
                        child: const CategoryButton(
                            name: "Bed", icon: "assets/icons/bed.png")),
                    const SizedBox(width: 7),
                    InkWell(
                      onTap: () {
                        Get.to(() => DiningScreen());
                      },
                      child: const CategoryButton(
                          name: "Dinning", icon: "assets/icons/dining.png"),
                    ),
                    const SizedBox(width: 7),
                    InkWell(
                      onTap: () {
                        Get.to(() => WardrobeScreen());
                      },
                      child: const CategoryButton(
                          name: "Wardrobe", icon: "assets/icons/wardrobe.png"),
                    ),
                    const SizedBox(width: 7),
                    InkWell(
                      onTap: () {
                        Get.to(() => ChairScreen());
                      },
                      child: const CategoryButton(
                          name: "Chair", icon: "assets/icons/chair.png"),
                    ),
                    const SizedBox(width: 7),
                    InkWell(
                      onTap: () {
                        Get.to(() => CabinetScreen());
                      },
                      child: const CategoryButton(
                          name: "Cabinets", icon: "assets/icons/cabinet.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended for you",
                      style: CustomTextStyles.f12W600(),
                    ),
                    InkWell(
                      child: Text(
                        "View all",
                        style: CustomTextStyles.f10W300(),
                        selectionColor: Colors.red,
                      ),
                      onTap: () {
                        Get.to(ProfileScreen());
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 800, // Ensure the GridView has a defined height
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Two items per row
                      crossAxisSpacing: 10.0, // Spacing between columns
                      mainAxisSpacing: 10.0, // Spacing between rows
                      mainAxisExtent: 250),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => ProductDescScreen());
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.secondaryTextColor,
                          ),
                          height: 150, // Set the height here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15, top: 15),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  height: 130,
                                  width: 800,
                                  child: Image(
                                    image:
                                        AssetImage("assets/common/chair.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, top: 5, right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Royal Sofa",
                                        style: CustomTextStyles.f12W600()),
                                    Text(
                                      "Comfortable and stylish sofa, perfect for enhancing any living space... ",
                                      style: CustomTextStyles.f8W300(),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                            "NPR 60000",
                                            style: CustomTextStyles.f12W600(),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Get.to(() => ProfileScreen());
        },
        child: Container(
          child: Image(
            image: AssetImage("assets/common/chatbot.gif"),
            height: 50,
            width: 50,
          ),
        ),
      ),
    );
  }

  String getGreeting() {
    int hour = DateTime.now().hour;

    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }
}

// Category Button widget
class CategoryButton extends StatelessWidget {
  final String name;
  final String icon;

  const CategoryButton({Key? key, required this.name, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 130,
      decoration: BoxDecoration(
        color: AppColors.primaryColor, // Red background color
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          children: [
            Image.asset(
              icon,
              height: 40,
              width: 40,
            ),
            const SizedBox(width: 4),
            Text(
              name,
              style: CustomTextStyles.f12W300(color: AppColors.extraWhite),
            ),
          ],
        ),
      ]),
    );
  }
}
