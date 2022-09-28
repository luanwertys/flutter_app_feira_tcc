import 'package:get/get.dart';

import '../../../models/cart_item_model.dart';
import '../../../models/order_model.dart';
import '../../../services/utils_services.dart';
import '../../auth/controller/auth_controller.dart';
import '../orders_result/orders_result.dart';
import '../repository/orders_repository.dart';

class OrderController extends GetxController {
  OrderModel order;

  OrderController(this.order);

  final ordersRepository = OrdersRepository();
  final authController = Get.find<AuthController>();
  final utilsServices = UtilsServices();
  bool isLoading = false;

  void setLoading(bool value) {
    isLoading = value;
    update();
  }

  Future<void> getOrderItems() async {
    setLoading(true);
    final OrdersResult<List<CartItemModel>> result =
        await ordersRepository.getOrderItems(
      orderId: order.id,
      token: authController.user.token!,
    );
    setLoading(false);

    result.when(
      success: (items) {
        order.items = items;
        update();
      },
      error: (message) {
        utilsServices.showToast(
          message: message,
          isError: true,
        );
      },
    );
  }
}
