import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../data/entities/auth/auth_model.dart';

class SharedPreferencesHelper {
  final SharedPreferences prefs;

  SharedPreferencesHelper({required this.prefs});

  /* Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  } */

  Future<void> setIdentity(AuthModel identity) async {
    //await init();
    var identityJson = json.encode(identity.toJson());
    await prefs.setString('identity', identityJson);
  }

  Future<void> removeIdentity() async {
    //await init();
    await prefs.remove('identity');
  }

  AuthModel? getIdentity() {
    //await init();
    final String? identityJson = prefs.getString('identity');
    if (identityJson != null) {
      Map<String, dynamic> identityMap = json.decode(identityJson);
      return AuthModel.fromJson(identityMap);
    }
    return null;
  }
}
