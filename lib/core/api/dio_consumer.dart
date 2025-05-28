import 'package:dio/dio.dart';
import 'package:s7tk/core/api/api_consuimer.dart';

class DioConsumer extends ApiConsuimer {
  Dio dio;
  DioConsumer(this.dio);
  @override
  Future<dynamic> get(
      {String? path,
      Object? data,
      Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get(
        path!,
        data: data,
        queryParameters: queryParameters,
      );
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
          print('Connection timeout');
          break;
        case DioExceptionType.sendTimeout:
          print('Send timeout');
          break;
        case DioExceptionType.receiveTimeout:
          print('Receive timeout');
          break;
        case DioExceptionType.badCertificate:
          print('Bad certificate');
          break;
        case DioExceptionType.badResponse:
          print('Bad response: ${e.response?.statusCode}');
          break;
        case DioExceptionType.cancel:
          print('Request cancelled');
          break;
        case DioExceptionType.connectionError:
          print('Connection error');
          break;
        default:
          print('Unknown error: ${e.message}');
      }
    }

    throw UnimplementedError();
  }

  @override
  Future<dynamic> post(
      {String? path,
      Object? data,
      Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.post(
        path!,
        data: data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
          print('Connection timeout');
          break;
        case DioExceptionType.sendTimeout:
          print('Send timeout');
          break;
        case DioExceptionType.receiveTimeout:
          print('Receive timeout');
          break;
        case DioExceptionType.badCertificate:
          print('Bad certificate');
          break;
        case DioExceptionType.badResponse:
          print('Bad response: \\${e.response?.statusCode}');
          break;
        case DioExceptionType.cancel:
          print('Request cancelled');
          break;
        case DioExceptionType.connectionError:
          print('Connection error');
          break;
        default:
          print('Unknown error: \\${e.message}');
      }
      rethrow;
    }
  }

  @override
  Future<dynamic> patch() {
    throw UnimplementedError();
  }

  @override
  Future<dynamic> delete() {
    throw UnimplementedError();
  }
}
