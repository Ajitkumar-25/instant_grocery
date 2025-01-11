import 'package:flutter/material.dart';

import 'package:blinkit_clone/repository/widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  HomeScreen({super.key});

  var data = [
    {"image": "image 50.png", "text": "Lights, Diyas&\n Candles"},
    {"image": "image 51.png", "text": "Diwali\nGifts"},
    {"image": "image 52.png", "text": "Appliances& \nGadgets"},
    {"image": "image 53.png", "text": "Home&\n Living"},
  ];

  var categroy = [
    {"img": "image 54.png", "text": "Golden Glass\n Wooden Lid Candle"},
    {"img": "image 57.png", "text": "Royal Gulab Jamun\n By Bikano"},
    {"img": "image 63.png", "text": "Golden Glass\n Wooden Lid Candle"},
  ];
  var grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetables & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44 (1).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45 (1).png", "text": "Biscuits & \nBakery"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 36),
          Stack(
            children: [
              Container(
                height: 175,
                width: double.infinity,
                color: Color(0XFFEC0505),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                            text: 'Blinkit in',
                            color: Color(0XFFFFFFFF),
                            fontweight: FontWeight.bold,
                            fontsize: 14,
                            fontfamily: 'bold'),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                            text: '10 minutes',
                            color: Color(0XFFFFFFFF),
                            fontweight: FontWeight.bold,
                            fontsize: 20,
                            fontfamily: 'bold')
                      ],
                    ),
                    Row(children: [
                      SizedBox(width: 20),
                      UiHelper.CustomText(
                          text: 'HOME',
                          color: Color(0XFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontsize: 14),
                      UiHelper.CustomText(
                          text: '- Ajit Kumar, Kanpur, UP',
                          color: Color(0XFFFFFFFF),
                          fontweight: FontWeight.w300,
                          fontsize: 14)
                    ]),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 100,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
              Positioned(
                  bottom: 16,
                  left: 15,
                  child: UiHelper.CustomTextField(controller: searchController))
            ],
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.white,
          ),
          Container(
            height: 196,
            width: double.infinity,
            color: Color(0XFFEC0505),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UiHelper.CustomImage(image: 'image 60.png'),
                    UiHelper.CustomImage(image: 'image 55.png'),
                    UiHelper.CustomText(
                        text: 'Mega Diwali Sale',
                        color: Colors.white,
                        fontweight: FontWeight.w900,
                        fontsize: 18,
                        fontfamily: 'bold'),
                    UiHelper.CustomImage(image: 'image 55.png'),
                    UiHelper.CustomImage(image: 'image 60.png'),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, top: 1, bottom: 1),
                          child: Container(
                            height: 108,
                            width: 86,
                            decoration: BoxDecoration(
                                color: Color(0XFFEAD3D3),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                UiHelper.CustomText(
                                    text: data[index]["text"].toString(),
                                    color: Colors.black,
                                    fontweight: FontWeight.bold,
                                    fontsize: 10),
                                UiHelper.CustomImage(
                                    image: data[index]["image"].toString())
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18, top: 6),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          height: 108,
                          width: 93,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: UiHelper.CustomImage(
                              image: categroy[index]["img"].toString()),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 4),
                        child: UiHelper.CustomText(
                            text: categroy[index]["text"].toString(),
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 8),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            UiHelper.CustomImage(image: "timer 4.png"),
                            UiHelper.CustomText(
                                text: "16 MINS",
                                color: Color(0XFF9C9C9C),
                                fontweight: FontWeight.normal,
                                fontsize: 10)
                          ],
                        ),
                      ),
                    ],
                  );
                },
                itemCount: categroy.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(
                  text: 'Grocery & Kitchen',
                  color: Color(0XFF000000),
                  fontweight: FontWeight.bold,
                  fontsize: 14,
                  fontfamily: 'bold')
            ],
          ),
          // SizedBox(height: ),
          SizedBox(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.only(top:2,left: 15,right: 15),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: UiHelper.CustomImage(
                              image: grocerykitchen[index]['img'].toString()),
                        ),
                      ),
                      UiHelper.CustomText(
                          text: grocerykitchen[index]['text'].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: grocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
