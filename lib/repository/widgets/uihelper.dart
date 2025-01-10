import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String image}) {
    return Image.asset('assets/images/$image');
  }

  static CustomText(
      {required String text,
      required Color color,
      required FontWeight fontweight,
      String? fontfamily,
      required double fontsize}) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: fontweight,
          fontFamily: fontfamily ?? 'regular',
          fontSize: fontsize),
    );
  }

  static CustomTextField(
      {required TextEditingController controller}) {
    return Container(
      height: 40,
      width: 320,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
          )),
      child: TextField(
          controller: controller,
          decoration: InputDecoration(
              hintText: "Search “ice-cream”",
              prefixIcon:
                  Image.asset("assets/images/search-interface-symbol 1.png"),
              suffixIcon: Image.asset("assets/images/mic 1.png"),
              border: InputBorder.none)
              
              
              ),
    );
  }
}
