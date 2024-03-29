import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:tcc/src/config/custom_colors.dart';
import 'package:tcc/src/models/cart_item_model.dart';
import 'package:tcc/src/pages/cart/controller/cart_controller.dart';
import 'package:tcc/src/pages/common_widgets/quantity_widget.dart';
import 'package:tcc/src/services/utils_services.dart';
=======

import '../../../../config/custom_colors.dart';
import '../../../../models/cart_item_model.dart';
import '../../../../services/utils_services.dart';
import '../../../commom_widgets/quantity_widget.dart';
import '../../controller/cart_controller.dart';
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac

class CartTile extends StatefulWidget {
  final CartItemModel cartItem;

  const CartTile({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  final UtilsServices utilsServices = UtilsServices();
  final controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        // Imagem
        leading: Image.network(
          widget.cartItem.item.imgUrl,
          height: 60,
          width: 60,
        ),

        // Titulo
        title: Text(
          widget.cartItem.item.itemName,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),

        // Total
        subtitle: Text(
          utilsServices.priceToCurrency(widget.cartItem.totalPrice()),
          style: TextStyle(
<<<<<<< HEAD
            color: CustomColors.customSwatchColor,
=======
            color: CustomColors.customContrastColor3,
            fontSize: 14,
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
            fontWeight: FontWeight.bold,
          ),
        ),

        // Quantidade
        trailing: QuantityWidget(
<<<<<<< HEAD
          suffixText: widget.cartItem.item.unit,
=======
          suffixText: ' ',
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
          value: widget.cartItem.quantity,
          result: (quantity) {
            controller.changeItemQuantity(
              item: widget.cartItem,
              quantity: quantity,
            );
          },
          isRemovable: true,
        ),
      ),
    );
  }
}
