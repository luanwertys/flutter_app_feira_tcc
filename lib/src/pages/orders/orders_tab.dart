import 'package:flutter/material.dart';
import 'package:flutter_app_cat_happy/src/config/custom_colors.dart';
import 'package:flutter_app_cat_happy/src/config/app_data.dart' as appdata;
import 'package:flutter_app_cat_happy/src/pages/orders/components/orders_tile.dart';

class OrdersTab extends StatelessWidget {
  const OrdersTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: CustomColors.customContrastColor3,
        title: Text(
          'Pedidos',
          style: TextStyle(
            color: CustomColors.customContrastColor4,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (_, index) => const SizedBox(height: 10),
        itemBuilder: (_, index) => OrdersTile(order: appdata.orders[index]),
        itemCount: appdata.orders.length,
      ),
    );
  }
}
