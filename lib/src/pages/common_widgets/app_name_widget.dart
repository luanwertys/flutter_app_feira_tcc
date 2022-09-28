import 'package:flutter/material.dart';
import 'package:flutter_app_cat_happy/src/config/custom_colors.dart';

class AppNameWidget extends StatelessWidget {
  final Color? customTitleColor;
  final double fontsize;
  const AppNameWidget({
    required this.fontsize,
    this.customTitleColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(
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
        ],
      ),
    );
  }
}
