import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:proyek_leap/Layout/home.dart';
import 'package:proyek_leap/Widgets/color.dart';
import 'package:proyek_leap/Widgets/custom_text.dart';

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
    topPadding = screenHeight * 0.15;
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
    var boxHeight = screenHeight * 0.71;

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

    return Wrap(
      children: <Widget>[
        Center(
          child: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color(Color_class.MainColor).withOpacity(0.75),
            ),
            width: screenWidth * 0.35,
            height: screenHeight * 0.75,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Image(
                        image: AssetImage('assets/images/logo.png'),
                        height: screenHeight * 0.1,
                        width: screenWidth * 0.1,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: CustomText(
                        text: "LOGIN",
                        size: 36,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
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
                                    hintStyle:
                                        TextStyle(color: Colors.grey[800]),
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
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                                    hintStyle:
                                        TextStyle(color: Colors.grey[800]),
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
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: boxHeight * 0.15,
                      width: boxWidth * 0.8,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                        },
                        child: CustomText(
                          text: "LOGIN",
                          size: 24,
                          color: Colors.white,
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Colors.white10;
                              return Color(0xffFF003D);
                              // Use the component's default.
                            },
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget mobileView() {
    
    var username;
    var password;
    var boxWidth = screenWidth * 0.5;
    var boxHeight = screenHeight * 0.5;


    return Wrap(
      children: <Widget>[
        Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color(Color_class.MainColor).withOpacity(0.75),
            ),
            width: screenWidth * 0.55,
            height: screenHeight * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Image(
                        image: AssetImage('assets/images/logo.png'),
                        height: screenHeight * 0.05,
                        width: screenWidth * 0.15,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: CustomText(
                        text: "LOGIN",
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                child: CustomText(
                                  text: "Username",
                                  size: 14,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                height: boxHeight * 0.1,
                                width: boxWidth * 0.55,
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
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
                                    hintStyle:
                                        TextStyle(color: Colors.grey[800]),
                                    fillColor: Color(0xffF8F0F0),
                                    hintText: 'Username',
                                    labelStyle: TextStyle(fontSize: 14)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            
                            children: <Widget>[
                              Container(
                                child: CustomText(
                                  text: "Password",
                                  size: 14,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                height: boxHeight * 0.1,
                                width: boxWidth * 0.55,
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
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
                                    hintStyle:
                                        TextStyle(color: Colors.grey[800]),
                                    fillColor: Color(0xffF8F0F0),
                                    hintText: 'Password',
                                    labelStyle: TextStyle(fontSize: 14)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: boxHeight * 0.15,
                      width: boxWidth * 0.8,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: CustomText(
                          text: "LOGIN",
                          size: 18,
                          color: Colors.white,
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Colors.white10;
                              return Color(0xffFF003D);
                              // Use the component's default.
                            },
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
