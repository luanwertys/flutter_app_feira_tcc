import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:get/get.dart';
import 'package:tcc/src/pages/base/controller/navigation_controller.dart';
import 'package:tcc/src/pages/cart/view/cart_tab.dart';
import 'package:tcc/src/pages/home/view/home_tab.dart';
import 'package:tcc/src/pages/orders/view/orders_tab.dart';
import 'package:tcc/src/pages/profile/profile_tab.dart';
=======
import 'package:flutter_app_cat_happy/src/config/custom_colors.dart';
import 'package:get/get.dart';

import '../cart/view/cart_tab.dart';
import '../home/view/home_tab.dart';
import '../orders/view/orders_tab.dart';
import '../profile/profile_tab.dart';
import 'controller/navigation_controller.dart';
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final navigationController = Get.find<NavigationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: navigationController.pageController,
        children: const [
          HomeTab(),
          CartTab(),
          OrdersTab(),
          ProfileTab(),
        ],
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: navigationController.currentIndex,
            onTap: (index) {
              navigationController.navigatePageView(index);
            },
            type: BottomNavigationBarType.fixed,
<<<<<<< HEAD
            backgroundColor: Colors.green,
=======
            backgroundColor: CustomColors.customContrastColor3,
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withAlpha(100),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Carrinho',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'Pedidos',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'perfil',
              ),
            ],
          )),
    );
  }
}
