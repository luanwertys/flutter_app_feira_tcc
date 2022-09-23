import 'package:flutter/material.dart';
import 'package:flutter_app_cat_happy/src/models/order_model.dart';
import 'package:flutter_app_cat_happy/src/services/utils_services.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PaymentDialog extends StatelessWidget {
  final OrderModel order;

  PaymentDialog({
    Key? key,
    required this.order,
  }) : super(key: key);

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Titulo
          const Text(
            'Pagamento com Pix',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

          //Qr Code
          QrImage(
            data: "dldldlldldldld",
            version: QrVersions.auto,
            size: 200.0,
          ),

          //Vencimento
          Text(
            'Vencimento: ${utilsServices.formatDateTime(order.overdueDateTime)}',
            style: const TextStyle(
              fontSize: 12,
            ),
          ),

          //Total
          Text(
            'Total: ${utilsServices.princeTocurrncy(order.total)}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          //Botão copia e cola
        ],
      ),
    );
  }
}
