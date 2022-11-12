import 'package:flutter/widgets.dart';
import 'package:alghadim/screens/splash.dart';
import 'package:alghadim/screens/sign_in.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
