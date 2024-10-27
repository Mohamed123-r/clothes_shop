import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    // options.headers['token'] = CacheHelper().getData(key: ApiKeys.token) != null
    //     ? 'FOODAPI ${CacheHelper().getData(key: ApiKeys.token)}'
    //     : null;
  }
}
