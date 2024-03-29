import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:tcc/src/config/custom_colors.dart';
import 'package:tcc/src/pages/cart/controller/cart_controller.dart';
import 'package:tcc/src/pages/cart/view/components/cart_tile.dart';
import 'package:tcc/src/services/utils_services.dart';
=======

import '../../../config/custom_colors.dart';
import '../../../services/utils_services.dart';
import '../controller/cart_controller.dart';
import 'components/cart_tile.dart';
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac

class CartTab extends StatefulWidget {
  const CartTab({Key? key}) : super(key: key);

  @override
  State<CartTab> createState() => _CartTabState();
}

class _CartTabState extends State<CartTab> {
  final UtilsServices utilsServices = UtilsServices();
  final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: const Text('Carrinho'),
=======
        backgroundColor: CustomColors.customContrastColor3,
        title: const Text(
          'Carrinho',
          style: TextStyle(color: Colors.white),
        ),
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
      ),
      body: Column(
        children: [
          // Lista de itens do carrinho
          Expanded(
            child: GetBuilder<CartController>(
              builder: (controller) {
                if (controller.cartItems.isEmpty) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.remove_shopping_cart,
<<<<<<< HEAD
                        size: 40,
                        color: CustomColors.customSwatchColor,
=======
                        size: 50,
                        color: CustomColors.customContrastColor,
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                      ),
                      const Text('Não há itens no carrinho'),
                    ],
                  );
                }

                return ListView.builder(
                  itemCount: controller.cartItems.length,
                  itemBuilder: (_, index) {
                    return CartTile(
                      cartItem: controller.cartItems[index],
                    );
                  },
                );
              },
            ),
          ),

          // Total e botão de concluir o pedido
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 3,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Total geral',
                        style: TextStyle(
<<<<<<< HEAD
                          fontSize: 12,
=======
                          fontSize: 13,
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                        ),
                      ),
                      GetBuilder<CartController>(
                        builder: (controller) {
                          return Text(
                            utilsServices
                                .priceToCurrency(controller.cartTotalPrice()),
                            style: TextStyle(
                              fontSize: 23,
<<<<<<< HEAD
                              color: CustomColors.customSwatchColor,
=======
                              color: CustomColors.customContrastColor3,
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: GetBuilder<CartController>(
                    builder: (controller) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
<<<<<<< HEAD
                          backgroundColor: CustomColors.customSwatchColor,
=======
                          primary: CustomColors.customContrastColor3,
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: (controller.isCheckoutLoading ||
                                controller.cartItems.isEmpty)
                            ? null
                            : () async {
                                bool? result = await showOrderConfirmation();

                                if (result ?? false) {
                                  cartController.checkoutCart();
                                } else {
                                  utilsServices.showToast(
                                    message: 'Pedido não confirmado',
                                  );
                                }
                              },
                        child: controller.isCheckoutLoading
                            ? const CircularProgressIndicator()
                            : const Text(
                                'Concluir pedido',
                                style: TextStyle(
                                  fontSize: 18,
<<<<<<< HEAD
=======
                                  color: Colors.white,
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                                ),
                              ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<bool?> showOrderConfirmation() {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text('Confirmação'),
          content: const Text('Deseja realmente concluir o pedido?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('Não'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text('Sim'),
            ),
          ],
        );
      },
    );
  }
}
