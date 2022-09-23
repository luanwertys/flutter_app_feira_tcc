import 'package:flutter/material.dart';
import 'package:flutter_app_cat_happy/src/config/custom_colors.dart';
import 'package:flutter_app_cat_happy/src/models/cart_item_model.dart';
import 'package:flutter_app_cat_happy/src/pages/cart/components/cart_title.dart';
import 'package:flutter_app_cat_happy/src/services/utils_services.dart';
import 'package:flutter_app_cat_happy/src/config/app_data.dart' as appdata;

class CartTab extends StatefulWidget {
  const CartTab({Key? key}) : super(key: key);

  @override
  State<CartTab> createState() => _CartTabState();
}

class _CartTabState extends State<CartTab> {
  final UtilsServices utilsServices = UtilsServices();

  void removeItemFronCart(CartItemModel cartItem) {
    setState(() {
      appdata.cartItens.remove(cartItem);
    });
  }

  double cartTotalPrice() {
    double total = 0;
    for (var item in appdata.cartItens) {
      total += item.totalPrice();
    }

    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.customContrastColor3,
        title: Text(
          'Carrinho',
          style: TextStyle(
            color: CustomColors.customContrastColor4,
            //fontFamily: 'Mulish',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: appdata.cartItens.length,
              itemBuilder: (_, index) {
                return CartTitle(
                  cartItem: appdata.cartItens[index],
                  remove: removeItemFronCart,
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: CustomColors.customContrastColor4,
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
                Text(
                  'Total geral',
                  style: TextStyle(
                    fontSize: 18,
                    color: CustomColors.customContrastColor2,
                  ),
                ),
                Text(
                  utilsServices.princeTocurrncy(
                    cartTotalPrice(),
                  ),
                  style: TextStyle(
                    fontSize: 23,
                    color: CustomColors.customContrastColor3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () async {
                      bool? result = await showOrderConfirmation();
                      //print(result);
                    },
                    child: Text(
                      'Concluir pedido',
                      style: TextStyle(
                        color: CustomColors.customContrastColor4,
                        fontSize: 18,
                      ),
                    ),
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
          content: const Text('Deseja realmente concluir esse pedido?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text(
                'Não',
                style: TextStyle(
                  color: CustomColors.customContrastColor3,
                ),
              ),
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
              child: Text(
                'Sim',
                style: TextStyle(
                  color: CustomColors.customContrastColor4,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
