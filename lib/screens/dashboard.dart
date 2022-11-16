import 'package:flutter/material.dart';
import 'package:alghadim/components/bottom_navbar.dart';
import 'package:alghadim/enums.dart';

import 'package:alghadim/screens/components/body.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  static String routeName = "/Dashboard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavbar(
        selectedMenu: MenuState.dashboard,
      ),
    );
  }
}
