// package we need for json encode/decode
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';
import 'package:starter_project_flutter/src/data/models/response/user/user_info_model/login_model.dart';
import 'package:starter_project_flutter/src/startup.dart';

import '../data/models/response/user/identity_token_model/identity_token_model.dart';
import '../data/models/response/user/role_list_model/role_list_model.dart';
import '../data/models/response/user/user_info_model/user_info_model.dart';

class AuthService {
  late final Dio _dio = singleton.get<DioClient>()._dio;
  /* late final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'http://192.168.77.92:50764/',
      connectTimeout: 50000,
      receiveTimeout: 30000,
      responseType: ResponseType.json,
    ),
  );*/

  AuthService() {
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
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

  Future<RoleListModel> login(username, password) async {
    try {
      var jsonData = {
        'email': username,
        'password': password,
      };
      var loginmodel = LoginModel(email: username, password: password);

      print(loginmodel.toJson());

      // Convert the Map to a JSON string
      String jsonString = json.encode(jsonData);

      final response = await _dio.post(
        'api/user/login',
        data: loginmodel,
        //queryParameters: {'button': 'login'},
        options: Options(
          // Set the content type to application/json
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );
      return RoleListModel.fromJson(response.data);
    } on DioError catch (err) {
      throw err;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<IdentityTokenModel> getToken(username, password) async {
    try {
      var formData = FormData.fromMap({
        'Username': username,
        'Password': password,
        'client_id': "bihamk-android-app",
        'client_secret': "06280921-1855-4ef8-b72e-d9d20e857efb",
        'scope': "openid profile api1 offline_access",
        'redirect_uri': "com.anet.bihamk:/oauth2callback",
        'grant_type': "password",
      });

      final response = await _dio.post(
        '/connect/token',
        data: formData,
        options: Options(
          headers: {"No-Authentication": true},
        ),
      );
      return IdentityTokenModel.fromJson(response.data);
    } on DioError catch (err) {
      throw err;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<UserInfoModel> getUserInfo(token) async {
    try {
      final response = await _dio.get(
        '/connect/userinfo',
        options: Options(
          headers: {
            "No-Authentication": true,
            "Authorization": token,
          },
        ),
      );
      return UserInfoModel.fromJson(response.data);
    } on DioError catch (err) {
      throw err;
    } catch (e) {
      throw e.toString();
    }
  }
}

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
    super.onError(err, handler);
  }
}
