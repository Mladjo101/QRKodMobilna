import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:starter_project_flutter/src/data/entities/auth/auth_model.dart';
import 'package:starter_project_flutter/src/services/postavke_service.dart';

import '../helpers/shared_preferences.dart';
import '../services/auth_service.dart';
import '../startup.dart';

part 'auth_provider.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    AuthModel? identity,
    @Default(true) bool isLoading,
    @Default(false) bool notificationOpened,
  }) = _AuthState;

  const AuthState._();
}

final authProvider =
    StateNotifierProvider<AuthNotifier, AuthState>((ref) => AuthNotifier());

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(AuthState()) {
    loadIdentity();
  }

  loadIdentity() async {
    state = state.copyWith(isLoading: true);
    var identity = singleton.get<SharedPreferencesHelper>().getIdentity();
    try {
      var postavke = await PostavkeService().ucitajPostavke();
    } catch (e) {
      identity = null;
    }

    state = state.copyWith(identity: identity, isLoading: false);
  }

  Future<bool> login(username, password) async {
    state = state.copyWith(isLoading: true);
    try {
      var roles = await DioClient().login(username, password);
      //var token = await DioClient().getToken(username, password);
      //var userInfo =  await DioClient().getUserInfo("Bearer ${token.access_token}");

      var model = AuthModel(
        userName: username,
        token: roles.token!,
        //dozvoljeneAkcije: userInfo.dozvoljeneAkcije,
        email: roles.email ?? '',
        //frontendModul: userInfo.frontendModul,
        //frontendModulNaslov: userInfo.frontendModulNaslov,
        punoIme: roles.firstName ?? ' ' + (roles.lastName ?? ' '),
        id: roles.id ?? '',
        //role: roles.ulo,
        //ulogaId: userInfo.ulogaId,
      );
      var todaysDate = DateTime.now();
      // var dateOfExpiration =
      //     todaysDate.add(Duration(seconds: roles.token.expires_in));

      singleton.get<SharedPreferencesHelper>().setUserId(roles.id);
      singleton.get<SharedPreferencesHelper>().setIdentity(model);
      // singleton
      //     .get<SharedPreferencesHelper>()
      //     .setExpirationDate(dateOfExpiration);
      state = state.copyWith(identity: model, isLoading: false);
      return true;
    } catch (e) {
      state = state.copyWith(isLoading: false);
      return false;
    }
  }

  notificationOpened() {
    state = state.copyWith(notificationOpened: true);
  }

  notificationClosed() {
    state = state.copyWith(notificationOpened: false);
  }
}
