import 'package:flutter/material.dart';
import 'package:proyek_leap/Widgets/color.dart';
import 'package:proyek_leap/Widgets/custom_text.dart';

Widget navigation_pane(lebar) {
  return Container(
    width: lebar * 0.15,
    decoration: BoxDecoration(
        color: Color(Color_class.MainColor),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
    child: Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 50),
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 100,
                  width: 200,
                ),
              ),
              Container(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bar_chart_rounded),
                      CustomText(
                          text: "Dashboard", color: Colors.white, size: 20),
                    ],
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Color(0xffFF003D);
                        return Color(Color_class.nav_sub_color);
                        // Use the component's default.
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
