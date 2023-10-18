<<<<<<< HEAD
import 'package:tcc/src/constants/endpoints.dart';
import 'package:tcc/src/models/category_model.dart';
import 'package:tcc/src/models/item_model.dart';
import 'package:tcc/src/pages/home/result/home_result.dart';
import 'package:tcc/src/services/http_manager.dart';
=======
import '../../../constants/endpoints.dart';
import '../../../models/category_model.dart';
import '../../../models/item_model.dart';
import '../../../services/http_manager.dart';
import '../result/home_result.dart';
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac

class HomeRespository {
  final HttpManager _httpManager = HttpManager();

  Future<HomeResult<CategoryModel>> getAllCategories() async {
    final result = await _httpManager.restRequest(
      url: Endpoints.getAllCategories,
      method: HttpMethods.post,
    );

    if (result['result'] != null) {
      List<CategoryModel> data =
          (List<Map<String, dynamic>>.from(result['result']))
              .map(CategoryModel.fromJson)
              .toList();

      return HomeResult<CategoryModel>.success(data);
    } else {
      return HomeResult.error(
          'Ocorreu um erro inesperado ao recuperar as categorias');
    }
  }

  Future<HomeResult<ItemModel>> getAllProducts(
      Map<String, dynamic> body) async {
    final result = await _httpManager.restRequest(
      url: Endpoints.getAllProducts,
      method: HttpMethods.post,
      body: body,
    );

    if (result['result'] != null) {
      List<ItemModel> data = List<Map<String, dynamic>>.from(result['result'])
          .map(ItemModel.fromJson)
          .toList();

      return HomeResult<ItemModel>.success(data);
    } else {
      return HomeResult.error(
          'Ocorreu um erro inesperado ao recuperar os itens');
    }
  }
}
