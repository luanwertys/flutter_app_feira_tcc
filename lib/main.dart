import 'package:flutter/material.dart';
import 'package:flutter_app_cat_happy/src/config/custom_colors.dart';
import 'package:flutter_app_cat_happy/src/pages/auth/controller/auth_controller.dart';
import 'package:flutter_app_cat_happy/src/pages_routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Get.put(AuthController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PetShop TCC',
      theme: ThemeData(
        backgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Colors.white.withAlpha(190),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            primary: CustomColors.customContrastColor4,
            backgroundColor: CustomColors.customContrastColor3,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: TextButton.styleFrom(
            primary: CustomColors.customContrastColor3,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: PagesRoutes.splashRoute,
      getPages: AppPages.pages,
    );
  }
}
