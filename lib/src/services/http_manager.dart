import 'package:dio/dio.dart';

abstract class HttpMethods {
  static const String post = 'POST';
  static const String get = 'GET';
  static const String put = 'PUT';
  static const String patch = 'PATCH';
  static const String delete = 'DELETE';
}

class HttpManager {
  Future<Map> restRequest({
    required String url,
    required String method,
    Map? headers,
    Map? body,
  }) async {
    // Headers da requisição
    final defaultHeaders = headers?.cast<String, String>() ?? {}
      ..addAll({
        'content-type': 'application/json',
        'accept': 'application/json',
        'X-Parse-Application-Id': 'B5JwkdwXDhaogxw6UOhAezI61rzdlbUiMTNugfV2',
        'X-Parse-REST-API-Key': 'iZwVKSbnpy3ETW0dE7Knm8yyuyDEmRADe3tADA7e',
      });

    Dio dio = Dio();

    try {
      Response response = await dio.request(
        url,
        options: Options(
          headers: defaultHeaders,
          method: method,
        ),
        data: body,
      );

      // Retorno do resultado do backend
      return response.data;
    } on DioError catch (error) {
      // Retorno do erro do dio request
      return error.response?.data ?? {};
    } catch (error) {
      // Retorno de map vazio para error generalizado
      return {};
    }
  }
}
