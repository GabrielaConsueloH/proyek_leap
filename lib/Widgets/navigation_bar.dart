import 'package:flutter/material.dart';
import 'package:proyek_leap/Widgets/color.dart';
import 'package:proyek_leap/Widgets/custom_text.dart';

Widget navigation_bar_custom(lebar) {
  return Container(
    constraints: BoxConstraints(maxWidth: lebar*0.85,minHeight: 85),
    margin: EdgeInsets.only(bottom: 50),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
        color: Color(Color_class.MainColor),
        borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.only(left: 25),
          child: CustomText(
            text: "Sunardi",
            color: Colors.white,
            size: 18,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: Icon(
            Icons.account_circle_rounded,
            color: Colors.pink[200],
            size: 50,
          ),
        )
      ],
    ),
  );
}
