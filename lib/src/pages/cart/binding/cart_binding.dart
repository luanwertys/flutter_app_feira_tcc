import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:tcc/src/pages/cart/controller/cart_controller.dart';
=======

import '../controller/cart_controller.dart';
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CartController());
  }
}
