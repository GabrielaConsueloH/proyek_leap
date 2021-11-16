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

class request_darah_instansi extends StatefulWidget {
  const request_darah_instansi({Key? key}) : super(key: key);

  @override
  _request_darah_instansiState createState() => _request_darah_instansiState();
}

class _request_darah_instansiState extends State<request_darah_instansi> {
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
      constraints: BoxConstraints(maxHeight: boxHeight, maxWidth: boxWidth),
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
                        Row(
                          children: [
                            Row(
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
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: boxHeight * 0.35,
                                  width: boxWidth * 0.35,
                                  decoration: BoxDecoration(
                                      color: Color(Color_class.MainColor),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text("INI BOX 3"),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: boxHeight * 0.35,
                              width: (boxWidth * 0.35 )*2,
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
          ),
        ],
      ),
    ),
  );
}

Widget mobileView() {
  return Wrap();
}
