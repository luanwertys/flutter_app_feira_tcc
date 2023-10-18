import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tcc/src/config/custom_colors.dart';
=======

import '../../../../config/custom_colors.dart';
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    Key? key,
    required this.category,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  final String category;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSelected
<<<<<<< HEAD
                ? CustomColors.customSwatchColor
=======
                ? CustomColors.customContrastColor3
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                : Colors.transparent,
          ),
          child: Text(
            category,
            style: TextStyle(
              color:
                  isSelected ? Colors.white : CustomColors.customContrastColor,
              fontWeight: FontWeight.bold,
              fontSize: isSelected ? 16 : 14,
            ),
          ),
        ),
      ),
    );
  }
}
