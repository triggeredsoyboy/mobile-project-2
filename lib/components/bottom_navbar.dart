import 'package:alghadim/constants.dart';
import 'package:flutter/material.dart';
import 'package:alghadim/enums.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({Key? key, required this.selectedMenu})
      : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.storefront),
              iconSize: 32.0,
              color: MenuState.dashboard == selectedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_rounded),
              iconSize: 32.0,
              color: MenuState.favorite == selectedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat_outlined),
              iconSize: 32.0,
              color: MenuState.favorite == selectedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle_outlined),
              iconSize: 32.0,
              color: MenuState.profile == selectedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
          ],
        ),
      ),
    );
  }
}
