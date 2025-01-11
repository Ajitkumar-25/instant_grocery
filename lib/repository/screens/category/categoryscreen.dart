import 'package:flutter/material.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';

class CategoryScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  var grocerykitchen = [
    {"img": "image 41.png", "text": "Vegetable & \nFruits"},
    {"img": "image 42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image 43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image 44 (1).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45 (1).png", "text": "Biscuits & \nBakery"},
  ];

  var grocerykitchen2 = [
    {"img": "image 21.png", "text": "Dry Fruits &\nCereals"},
    {"img": "image 22.png", "text": "Kitchen &\nAppliances"},
    {"img": "image 23.png", "text": "Tea &\nCoffees"},
    {"img": "image 24.png", "text": "Ice Creams &\nmuch more"},
    {"img": "image 25.png", "text": "Noodles &\nPacket Food"},
  ];
  var snacksdrinks = [
    {"img": "image 31.png", "text": "Chips &\nNamkeens"},
    {"img": "image 32.png", "text": "Sweets &\nChocalates"},
    {"img": "image 33.png", "text": "Drinks &\nJuices"},
    {"img": "image 34.png", "text": "Sauces &\nSpreads"},
    {"img": "image 35.png", "text": "Beauty &\nCosmetics"},
  ];
  var householdessentials = [
    {"img": "image 36.png", "text": "Detergent &\nBars"},
    {"img": "image 37.png", "text": "Perfume &\nDeo"},
    {"img": "image 38.png", "text": "Drinks &\nJuices"},
    {"img": "image 39.png", "text": "Sofa &\nChairs"},
    {"img": "image 40.png", "text": "Hair Oil &\nShampoo"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 36),
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  color: Color(0XFFF7CB45),
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          UiHelper.CustomText(
                              text: 'Blinkit in',
                              color: Color(0XFF000000),
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
                              color: Color(0XFF000000),
                              fontweight: FontWeight.bold,
                              fontsize: 20,
                              fontfamily: 'bold')
                        ],
                      ),
                      Row(children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                            text: 'HOME',
                            color: Color(0XFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 14),
                        UiHelper.CustomText(
                            text: '- Ajit Kumar, Kanpur, UP',
                            color: Color(0XFF000000),
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
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 16,
                    left: 15,
                    child:
                        UiHelper.CustomTextField(controller: searchController))
              ],
            ),
            SizedBox(height: 20),
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
            SizedBox(height: 14),
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
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
            SizedBox(height: 10),
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
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
                                image:
                                    grocerykitchen2[index]['img'].toString()),
                          ),
                        ),
                        UiHelper.CustomText(
                            text: grocerykitchen2[index]['text'].toString(),
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
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                UiHelper.CustomText(
                    text: 'Snacks & Drinks',
                    color: Color(0XFF000000),
                    fontweight: FontWeight.bold,
                    fontsize: 14,
                    fontfamily: 'bold')
              ],
            ),
            SizedBox(height: 14),
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
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
                                image: snacksdrinks[index]['img'].toString()),
                          ),
                        ),
                        UiHelper.CustomText(
                            text: snacksdrinks[index]['text'].toString(),
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
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                UiHelper.CustomText(
                    text: 'Household Essentials',
                    color: Color(0XFF000000),
                    fontweight: FontWeight.bold,
                    fontsize: 14,
                    fontfamily: 'bold')
              ],
            ),
            SizedBox(height: 14),
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
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
                                image: householdessentials[index]['img']
                                    .toString()),
                          ),
                        ),
                        UiHelper.CustomText(
                            text: householdessentials[index]['text'].toString(),
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
      ),
    );
  }
}
