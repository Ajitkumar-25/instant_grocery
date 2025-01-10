import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                            text: '16 minutes',
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
                          text: '- Sujal Dave, Ratanada, Jodhpur (Raj)',
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
                  child: UiHelper.CustomTextField(controller: searchController))
            ],
          ),
          SizedBox(height: 30),
          UiHelper.CustomImage(image: "shoppingcart.png"),
          SizedBox(height: 10),
          UiHelper.CustomText(
              text: 'Reordering will be easy',
              color: Colors.black,
              fontweight: FontWeight.w700,
              fontsize: 16,
              fontfamily: 'bold'),
          SizedBox(height: 6),
          UiHelper.CustomText(
              text: 'Items you order will show up here so you can buy',
              color: Colors.black,
              fontweight: FontWeight.w500,
              fontsize: 10,
              fontfamily: 'regular'),
          UiHelper.CustomText(
              text: 'them again easily.',
              color: Colors.black,
              fontweight: FontWeight.w500,
              fontsize: 10,
              fontfamily: 'regular'),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(
                  text: 'Bestsellers',
                  color: Colors.black,
                  fontweight: FontWeight.w600,
                  fontsize: 16,
                  fontfamily: 'bold')
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomImage(image: "image 45.png")
            ],
          )
        ],
      ),
    );
  }
}
