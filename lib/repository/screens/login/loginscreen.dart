import 'package:blinkit_clone/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: Center(
        child: Column(
          children: [
            UiHelper.CustomImage(image: "Blinkit Onboarding Screen.png"),
            SizedBox(height: 10),
            UiHelper.CustomImage(image: "image 10.png"),
            SizedBox(height: 10),
            UiHelper.CustomText(
                text: 'India’s last minute app',
                color: Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontsize: 24,
                fontfamily: 'bold'),
            SizedBox(height: 10),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XFFFFFFFF),
                ),
                child: Column(children: [
                  UiHelper.CustomText(
                      text: 'Ajit Kumar',
                      color: Color(0XFF000000),
                      fontweight: FontWeight.bold,
                      fontsize: 14,
                      fontfamily: 'regular'),
                  SizedBox(height: 5),
                  UiHelper.CustomText(
                      text: '70631XXXXX',
                      color: Color(0XFF9C9C9C),
                      fontweight: FontWeight.bold,
                      fontsize: 14,
                      fontfamily: 'regular'),
                  SizedBox(height: 10),
                  SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNavScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFFE23744),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UiHelper.CustomText(
                                  text: 'Login with',
                                  color: Color(0XFFFFFFFF),
                                  fontweight: FontWeight.bold,
                                  fontsize: 14,
                                  fontfamily: 'bold'),
                              SizedBox(width: 5),
                              UiHelper.CustomImage(image: 'image 9.png')
                            ],
                          ))),
                  SizedBox(height: 10),
                  UiHelper.CustomText(
                      text:
                          'Access your saved addresses from Zomato automatically!',
                      color: Color(0XFF9C9C9C),
                      fontweight: FontWeight.w400,
                      fontsize: 10),
                  SizedBox(height: 30),
                  UiHelper.CustomText(
                      text: 'or login with phone number',
                      color: Color(0XFF269237),
                      fontweight: FontWeight.w400,
                      fontsize: 14)
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
