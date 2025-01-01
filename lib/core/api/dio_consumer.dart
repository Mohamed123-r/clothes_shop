import 'package:clothes_shop_app/core/error/exceptions.dart';
import 'package:dio/dio.dart';
import '../../constants.dart';
import 'api_consumer.dart';
import 'api_interceptor.dart';
import 'end_point.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoint.baseUrlAuth;
    dio.interceptors.add(ApiInterceptor());
    dio.interceptors.add(
      LogInterceptor(
        error: true,
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }

  @override
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var response = await dio.get(
        path,
        queryParameters: queryParameters,
      );

      return response.data;
    } on DioException catch (e) {
      logger.e(
          "Exception in  api :$e");
      if (e.type == DioExceptionType.badResponse) {
        throw CustomException(message: e.response!.data);
      }

    } catch (e) {
      logger.e(
          "Exception in  firebaseAuthService.createUserWithEmailAndPassword :$e");

      throw CustomException(message: e.toString());
    }
  }

  @override
  Future<dynamic> delete(
    String path, {
    Map<String, dynamic>? body,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.delete(
        path,
        data: isFormData ? FormData.fromMap(body!) : body,
      );
      return response.data;
    } on DioException catch (e) {

      if (e.type == DioExceptionType.badResponse) { logger.e(
          "Exception in  api :$e");
        throw CustomException(message: e.response!.data);
      } else {
           logger.e(
            "Exception in  firebaseAuthService.createUserWithEmailAndPassword :$e");

            throw CustomException(message: e.toString());
      }

    }
  }

  @override
  Future<dynamic> patch(
    String path, {
    Map<String, dynamic>? body,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.patch(
        path,
        data: isFormData ? FormData.fromMap(body!) : body,
      );
      return response.data;
    } on DioException catch (e) {
      logger.e(
          "Exception in  api :$e");
      if (e.type == DioExceptionType.badResponse) {
        throw CustomException(message: e.response!.data);
      }

    } catch (e) {
      logger.e(
          "Exception in  firebaseAuthService.createUserWithEmailAndPassword :$e");

      throw CustomException(message: e.toString());
    }
  }

  @override
  Future<dynamic> post(
    String path, {
    Map<String, dynamic>? body,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.post(
        path,
        data: isFormData ? FormData.fromMap(body!) : body,
      );
      return response.data;
    } on DioException catch (e) {

      if (e.type == DioExceptionType.badResponse) { logger.e(
          "Exception in  api :$e");
      throw CustomException(message: e.response!.data);
      } else {
        logger.e(
            "Exception in  firebaseAuthService.createUserWithEmailAndPassword :$e");

        throw CustomException(message: e.toString());
      }

    }
  }

  @override
  Future<dynamic> put(
    String path, {
    Map<String, dynamic>? body,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.put(
        path,
        data: isFormData ? FormData.fromMap(body!) : body,
      );
      return response.data;
    } on DioException catch (e) {
      logger.e(
          "Exception in  api :$e");
      if (e.type == DioExceptionType.badResponse) {
        throw CustomException(message: e.response!.data);
      }

    } catch (e) {
      logger.e(
          "Exception in  firebaseAuthService.createUserWithEmailAndPassword :$e");

      throw CustomException(message: e.toString());
    }
  }
}
