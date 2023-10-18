import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tcc/src/config/custom_colors.dart';

class AppNameWidget extends StatelessWidget {
  final Color? greenTitleColor;
  final double textSize;

  const AppNameWidget({
    Key? key,
    this.greenTitleColor,
    this.textSize = 30,
=======
import 'package:flutter_app_cat_happy/src/config/custom_colors.dart';

class AppNameWidget extends StatelessWidget {
  final Color? customTitleColor;
  final double fontsize;
  const AppNameWidget({
    required this.fontsize,
    this.customTitleColor,
    Key? key,
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(
<<<<<<< HEAD
          fontSize: textSize,
        ),
        children: [
          TextSpan(
            text: 'Fruit',
            style: TextStyle(
              color: greenTitleColor ?? CustomColors.customSwatchColor,
            ),
          ),
          TextSpan(
            text: 'Life',
            style: TextStyle(
              color: CustomColors.customContrastColor,
            ),
          ),
=======
          fontSize: fontsize,
        ),
        children: [
          TextSpan(
            text: 'Pet shop',
            style: TextStyle(
              fontFamily: 'Muslish',
              color: customTitleColor ?? CustomColors.customContrastColor,
              fontWeight: FontWeight.normal,
            ),
          ),
          TextSpan(
            text: ' Cat Happy',
            style: TextStyle(
                fontFamily: 'Muslish',
                color: CustomColors.customContrastColor2,
                fontWeight: FontWeight.normal),
          )
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
        ],
      ),
    );
  }
}
