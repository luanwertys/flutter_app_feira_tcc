import 'package:flutter/material.dart';
import 'package:flutter_app_cat_happy/src/auth/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xffCE4A95)
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
    );
  }
}

