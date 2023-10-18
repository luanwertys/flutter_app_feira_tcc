import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:get/get.dart';
import 'package:tcc/src/pages/orders/controller/all_orders_controller.dart';
import 'package:tcc/src/pages/orders/view/components/order_tile.dart';
=======
import 'package:flutter_app_cat_happy/src/config/custom_colors.dart';
import 'package:get/get.dart';

import '../controller/all_orders_controller.dart';
import 'components/order_tile.dart';
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac

class OrdersTab extends StatelessWidget {
  const OrdersTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: const Text('Pedidos'),
=======
        backgroundColor: CustomColors.customContrastColor3,
        title: const Text(
          'Pedidos',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
      ),
      body: GetBuilder<AllOrdersController>(
        builder: (controller) {
          return RefreshIndicator(
            onRefresh: () => controller.getAllOrders(),
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (_, index) => const SizedBox(height: 10),
              itemBuilder: (_, index) =>
                  OrderTile(order: controller.allOrders[index]),
              itemCount: controller.allOrders.length,
            ),
          );
        },
      ),
    );
  }
}
