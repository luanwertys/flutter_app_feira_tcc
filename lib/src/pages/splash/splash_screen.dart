import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tcc/src/config/custom_colors.dart';
import 'package:tcc/src/pages/common_widgets/app_name_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
=======
import 'package:flutter_app_cat_happy/src/config/custom_colors.dart';
import 'package:flutter_app_cat_happy/src/pages/commom_widgets/custom_text_rich.dart';
import 'package:get/get.dart';

import '../../pages_routes/app_pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      Get.offAllNamed(PagesRoutes.signInRoute);
    });
  }

  @override
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              CustomColors.customSwatchColor,
              CustomColors.customSwatchColor.shade700,
            ],
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
<<<<<<< HEAD
          children: const [
            AppNameWidget(
              greenTitleColor: Colors.white,
              textSize: 40,
            ),
            SizedBox(height: 10),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.white),
            )
=======
          children: [
            CustomTextRich(
              customTitleColor: CustomColors.customContrastColor4,
              fontsize: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(
                Colors.white,
              ),
            ),
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
          ],
        ),
      ),
    );
  }
}
