// package we need for json encode/decode
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';

import '../data/models/response/predavanje/predavanje_in_db_model.dart';
import '../helpers/shared_preferences.dart';
import '../startup.dart';

abstract class BaseService {
  late final Dio dio = singleton.get<DioClient>()._dio;

  BaseService() {
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }
}

class DioClient {
  final _dio = Dio(
    BaseOptions(
      baseUrl: 'https://0e61-147-161-130-102.ngrok-free.app/',
      connectTimeout: 50000,
      receiveTimeout: 30000,
      responseType: ResponseType.json,
    ),
  );

  DioClient() {
    _dio.interceptors.add(DioInterceptor());
  }

  Dio get dio => _dio;
  Future<PredavanjeInDBModel> prijavaPredavanje(username, password) async {
    try {
      final response = await _dio.post(
        '/login',
        data: "formData",
        queryParameters: {'button': 'login'},
        options: Options(
          headers: {"No-Authentication": true},
        ),
      );
      return PredavanjeInDBModel.fromJson(response.data);
    } on DioError catch (err) {
      throw err;
    } catch (e) {
      throw e.toString();
    }
  }
}

class DioInterceptor extends Interceptor {
  final identity = singleton.get<SharedPreferencesHelper>().getIdentity();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.headers["No-Authorization"] != true && identity != null) {
      options.headers['Authorization'] = "Bearer " + identity!.token!;
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    if (response.statusCode == 401)
      singleton.get<SharedPreferencesHelper>().removeIdentity();
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
    super.onError(err, handler);
  }
}
