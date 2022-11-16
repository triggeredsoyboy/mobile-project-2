import 'package:flutter/widgets.dart';
import 'package:alghadim/screens/splash.dart';
import 'package:alghadim/screens/sign_in.dart';
import 'package:alghadim/screens/welcome.dart';
import 'package:alghadim/screens/dashboard.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  Dashboard.routeName: (context) => Dashboard(),
};
