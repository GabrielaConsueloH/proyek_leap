import 'dart:html';

import 'package:flutter/material.dart';
import 'Widgets/custom_text.dart';
import 'Widgets/color.dart';

class login extends StatefulWidget {
  const login({ Key? key }) : super(key: key);

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
      body:  Padding(
        padding: EdgeInsets.only(bottom: bottomPadding, top: topPadding),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return desktopView();
            } else {
              return mobileView();
            }
          },
        ),
      ),
    );
  }

  Widget desktopView(){
    return Center(child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color:Color(Color_class.MainColor).withOpacity(0.75),
      ),
      width: 503,
      height: 501,
      padding: EdgeInsets.all(10),
      child: Column(
        children:<Widget> [
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child:Text("LOGIN", textAlign:TextAlign.center,),
          ),
          
          Center(
            child: Column(
              children: <Widget>[
                Row(
                  children:<Widget> [
                     Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 50, 20),
                        child:Text("Username",textAlign:TextAlign.center),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(50, 10, 0, 20),
                        child: Text("lalalalla"),
                      ),
                  ],
                ),
                Row(
                  children:<Widget> [
                     Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 50, 20),
                        child:Text("Password", textAlign:TextAlign.center,),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(50, 10, 0, 20),
                        child: Text("pasword"),
                      ),
                  ],
                )
              ],
            ),
          ),
         
         
          
        ],
      ),
      
    ));
  }

  Widget mobileView(){
    return SingleChildScrollView(
      child: Container(

      ),
    );
  }
}