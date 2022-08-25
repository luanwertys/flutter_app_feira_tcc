import 'package:flutter/material.dart';
import 'package:flutter_app_cat_happy/src/config/custom_colors.dart';

class CustomTextRich extends StatelessWidget {
  final double fontsize;
  const CustomTextRich({
    required this.fontsize,
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
              color: CustomColors.customContrastColor,
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
