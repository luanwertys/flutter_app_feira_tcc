import 'package:flutter/material.dart';
import 'package:flutter_app_cat_happy/src/config/custom_colors.dart';
import 'package:flutter_app_cat_happy/src/pages/home/home_tab.dart';
import 'package:flutter_app_cat_happy/src/pages/orders/orders_tab.dart';

import '../cart/cart_tab.dart';
import '../profile/profile_tab.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int courrentIndex = 0;
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomeTab(),
          CartTab(),
          OrdersTab(),
          ProfileTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: courrentIndex,
        onTap: (index) {
          setState(() {
            courrentIndex = index;
            //pageController.jumpToPage(index);
            pageController.animateToPage(
              index,
              duration: const Duration(
                milliseconds: 300,
              ),
              curve: Curves.ease,
            );
          });
        },
        selectedItemColor: Colors.white,
        backgroundColor: CustomColors.customContrastColor3,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white.withAlpha(100),
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_sharp,
            ),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            label: 'Pedidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_sharp,
            ),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
