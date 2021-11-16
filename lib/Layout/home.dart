import 'package:flutter/material.dart';
import 'package:proyek_leap/Widgets/color.dart';
import 'package:proyek_leap/Widgets/custom_text.dart';
import 'package:proyek_leap/Widgets/navigation_bar.dart';
import 'package:proyek_leap/Widgets/navigation_pane.dart';

late double screenWidth;
late double screenHeight;
late double boxHeight;
late double boxWidth;
late double topPadding;
late double bottomPadding;

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(Color_class.SecondaryColor),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 720.0) {
            return desktopView();
          } else {
            return mobileView();
          }
        },
      ),
    );
  }
}

Widget desktopView() {
  boxHeight = screenHeight * 0.98;
  boxWidth = screenWidth * 0.99;
  return Center(
    child: Container(
      height: boxHeight,
      width: boxWidth,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: navigation_pane(boxWidth),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    navigation_bar_custom(boxWidth),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(bottom: 25),
                              child: Text(
                                "DASHBOARD",
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                        ListView(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: boxHeight * 0.35,
                                      width: boxWidth * 0.35,
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Color(Color_class.MainColor),
                                          borderRadius: BorderRadius.circular(10)),
                                      child: Text("INI BOX 1"),
                                    ),
                                     Container(
                                      height: boxHeight * 0.35,
                                      width: boxWidth * 0.35,
                                      
                                      decoration: BoxDecoration(
                                          color: Color(Color_class.MainColor),
                                          borderRadius: BorderRadius.circular(10)),
                                      child: Text("INI BOX 2"),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: boxHeight *0.35 + boxHeight *0.35,
                                      width: boxWidth * 0.35 ,
                                      decoration: BoxDecoration(
                                          color: Color(Color_class.MainColor),
                                          borderRadius: BorderRadius.circular(10)),
                                      child: Text("INI BOX 3"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget mobileView() {
  return Wrap();
}
