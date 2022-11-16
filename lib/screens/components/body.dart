import 'package:alghadim/size_config.dart';
import 'package:flutter/material.dart';

import 'package:alghadim/screens/components/header.dart';
import 'package:alghadim/screens/components/discount_banner.dart';
import 'package:alghadim/screens/components/categories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getPropScreenHeight(20),
            ),
            Header(),
            SizedBox(
              height: getPropScreenWidth(10),
            ),
            DiscountBanner(),
            Categories(),
          ],
        ),
      ),
    );
  }
}
