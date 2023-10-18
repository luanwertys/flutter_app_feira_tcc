<<<<<<< HEAD
import 'package:tcc/src/constants/endpoints.dart';
import 'package:tcc/src/models/cart_item_model.dart';
import 'package:tcc/src/models/order_model.dart';
import 'package:tcc/src/pages/orders/orders_result/orders_result.dart';
import 'package:tcc/src/services/http_manager.dart';
=======
import 'package:flutter_app_cat_happy/src/pages/orders/orders_result/orders_result.dart';

import '../../../constants/endpoints.dart';
import '../../../models/cart_item_model.dart';
import '../../../models/order_model.dart';
import '../../../services/http_manager.dart';
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac

class OrdersRepository {
  final _httpManager = HttpManager();

  Future<OrdersResult<List<CartItemModel>>> getOrderItems({
    required String orderId,
    required String token,
  }) async {
    final result = await _httpManager.restRequest(
      url: Endpoints.getOrderItems,
      method: HttpMethods.post,
      body: {
        'orderId': orderId,
      },
      headers: {
        'X-Parse-Session-Token': token,
      },
    );

    if (result['result'] != null) {
      List<CartItemModel> items =
          List<Map<String, dynamic>>.from(result['result'])
              .map(CartItemModel.fromJson)
              .toList();

      return OrdersResult<List<CartItemModel>>.success(items);
    } else {
      return OrdersResult.error(
          'Não foi possível recuperar os produtos do pedido');
    }
  }

  Future<OrdersResult<List<OrderModel>>> getAllOrders({
    required String userId,
    required String token,
  }) async {
    final result = await _httpManager.restRequest(
      url: Endpoints.getAllOrders,
      method: HttpMethods.post,
      body: {
        'user': userId,
      },
      headers: {
        'X-Parse-Session-Token': token,
      },
    );

    if (result['result'] != null) {
      List<OrderModel> orders =
          List<Map<String, dynamic>>.from(result['result'])
              .map(OrderModel.fromJson)
              .toList();

      return OrdersResult<List<OrderModel>>.success(orders);
    } else {
      return OrdersResult.error('Não foi possível recuperar os pedidos');
    }
  }
}
