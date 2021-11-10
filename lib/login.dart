import 'dart:html';

import 'package:flutter/material.dart';
import 'Widgets/custom_text.dart';
import 'Widgets/color.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  late double screenWidth;
  late double screenHeight;
  late double topPadding;
  late double bottomPadding;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    topPadding = screenHeight * 0.025;
    bottomPadding = screenHeight * 0.01;
    return Scaffold(
      backgroundColor: Color(Color_class.SecondaryColor),
      body: Padding(
        padding: EdgeInsets.only(bottom: bottomPadding, top: topPadding),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 720) {
              return desktopView();
            } else {
              return mobileView();
            }
          },
        ),
      ),
    );
  }

  Widget desktopView() {
    // late TextEditingController _controller;
    var username;
    var password;
    var boxWidth = screenWidth * 0.35;
    var boxHeight = screenHeight * 0.7;
    // @override
    // void initState() {
    //   super.initState();
    //   _controller = TextEditingController();
    // }
    // @override
    // void dispose() {
    //   _controller.dispose();
    //   super.dispose();
    // }

    
    return Center(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color(Color_class.LoginBg).withOpacity(0.75),
        ),
        width: screenWidth * 0.35,
        height: screenHeight * 0.71,
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                height: screenHeight * 0.1,
                width: screenWidth * 0.1,
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(10),
                child: CustomText(
                  text: "LOGIN",
                  size: 36,
                  color: Colors.white,
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(25, 30, 0, 10),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          child: CustomText(
                            text: "Username",
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: boxHeight * 0.1,
                          width: boxWidth * 0.55,
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: TextField(
                            onChanged: (String _value) {
                              setState(
                                () {
                                  username = _value;
                                },
                              );
                            },
                            onSubmitted: (String _value) {
                              print(_value);
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              contentPadding: EdgeInsets.all(10),
                              hintStyle: TextStyle(color: Colors.grey[800]),
                              fillColor: Color(0xffF8F0F0),
                              hintText: 'Username',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(25, 30, 0, 10),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          child: CustomText(
                            text: "Password",
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: boxHeight * 0.1,
                          width: boxWidth * 0.55,
                          padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                          alignment: Alignment.center,
                          child: TextField(
                            obscureText: true,
                            onChanged: (String _value) {
                              setState(
                                () {
                                  username = _value;
                                },
                              );
                            },
                            onSubmitted: (String _value) {
                              print(_value);
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              contentPadding: EdgeInsets.all(10),
                              hintStyle: TextStyle(color: Colors.grey[800]),
                              fillColor: Color(0xffF8F0F0),
                              hintText: 'Password',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 20, 10, 10),
                height: boxHeight * 0.2,
                width: boxWidth * 0.75,
                child: ElevatedButton(
                  onPressed: () {},
                  child: CustomText(
                    text: "LOGIN",
                    size: 24,
                    color: Colors.white,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.white10;
                        return Color(
                            0xffFF003D); // Use the component's default.
                      },
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget mobileView() {
    return SingleChildScrollView(
      child: Container(),
    );
  }
}
