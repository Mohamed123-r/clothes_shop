import 'package:clothes_shop_app/constants.dart';
import 'package:dio/dio.dart';

import '../database/cache/cache_helper.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    options.headers['Authorization'] =
        CacheHelper().getData(key: sharedPrefUserToken) != null
            ? 'Bearer ${CacheHelper().getData(key: sharedPrefUserToken)}'
            : null;
  }
}
