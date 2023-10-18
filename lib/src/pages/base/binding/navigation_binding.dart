import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:tcc/src/pages/base/controller/navigation_controller.dart';
=======

import '../controller/navigation_controller.dart';
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac

class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigationController());
  }
}
