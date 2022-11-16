import 'package:flutter/material.dart';
import 'package:alghadim/size_config.dart';
import 'package:alghadim/components/buttons.dart';

import 'package:alghadim/screens/dashboard.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static String routeName = "/WelcomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Log In Success"),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.08,
        ),
        Text(
          "Log In Success",
          style: TextStyle(
            fontSize: getPropScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Shop Now!",
            press: () {
              Navigator.pushNamed(context, Dashboard.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
