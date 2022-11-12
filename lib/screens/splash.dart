import 'package:flutter/material.dart';
import 'package:alghadim/constants.dart';
import 'package:alghadim/size_config.dart';
import 'package:alghadim/components/buttons.dart';

import 'package:alghadim/screens/sign_in.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String routeName = "/SplashScreen";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Al-Ghadim",
      "image": "assets/images/splash1.png",
    },
    {
      "text": "Get your stuff here",
      "image": "assets/images/splash2.png",
    },
    {
      "text": "Buy everythings",
      "image": "assets/images/splash3.png",
    },
    {
      "text": "Create your own rooms",
      "image": "assets/images/splash4.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]["text"],
                  image: splashData[index]["image"],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 1),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(flex: 2),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 2),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({Key? key, this.text, this.image}) : super(key: key);

  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "AL-GHADIM",
          style: TextStyle(
            fontSize: getPropScreenWidth(36),
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getPropScreenWidth(15),
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer(flex: 2),
        Image.asset(
          image!,
          width: getPropScreenWidth(320),
          height: getPropScreenHeight(330),
        ),
      ],
    );
  }
}
