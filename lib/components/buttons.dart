import 'package:flutter/material.dart';
import 'package:alghadim/constants.dart';
import 'package:alghadim/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, this.text, this.press}) : super(key: key);

  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getPropScreenHeight(56),
      child: TextButton(
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getPropScreenWidth(18),
            color: Colors.white,
          ),
        ),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          primary: Colors.white,
          backgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
