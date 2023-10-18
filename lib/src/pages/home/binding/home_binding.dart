import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:tcc/src/pages/home/controller/home_controller.dart';
=======

import '../controller/home_controller.dart';
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
