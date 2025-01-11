import 'package:flutter/material.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';

class PrintScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFBF0CE),
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
                  child: UiHelper.CustomTextField(controller: searchController))
            ],
          ),
          SizedBox(height: 20),
          UiHelper.CustomText(
              text: 'Print Store',
              color: Colors.black,
              fontweight: FontWeight.w700,
              fontsize: 32,
              fontfamily: 'bold'),
          UiHelper.CustomText(
              text: 'Blinkit ensures secure prints at every stage',
              color: Color(0XFF9C9C9C),
              fontweight: FontWeight.w300,
              fontsize: 14,
              fontfamily: 'bold'),
          SizedBox(height: 50),
          Stack(children: [
            Container(
                height: 180,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      UiHelper.CustomText(
                          text: 'Documents',
                          color: Colors.black,
                          fontweight: FontWeight.w700,
                          fontsize: 14,
                          fontfamily: 'bold')
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      UiHelper.CustomImage(image: 'list.png'),
                      SizedBox(width: 10),
                      UiHelper.CustomText(
                          text: 'Price starting at rs 3/page',
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.w400,
                          fontsize: 14,
                          fontfamily: 'regular')
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      UiHelper.CustomImage(image: 'list.png'),
                      SizedBox(width: 10),
                      UiHelper.CustomText(
                          text: 'Paper quality: 70 GSM',
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.w400,
                          fontsize: 14,
                          fontfamily: 'regular')
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      UiHelper.CustomImage(image: 'list.png'),
                      SizedBox(width: 10),
                      UiHelper.CustomText(
                          text: 'Single side prints',
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.w400,
                          fontsize: 14,
                          fontfamily: 'regular')
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      SizedBox(
                        height: 40,
                        width: 125,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0XFFF27AF34),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: Text(
                              'Upload Files',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'bold'),
                            )),
                      )
                    ],
                  )
                ])),
            Positioned(
                right: 20,
                bottom: 40,
                child: UiHelper.CustomImage(image: 'image 62.png'))
          ])
        ],
      ),
    );
  }
}
