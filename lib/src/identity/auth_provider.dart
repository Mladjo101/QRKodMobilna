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
      var roles = await AuthService().login(username, password);
      var token = await AuthService().getToken(username, password);
      var userInfo =
          await AuthService().getUserInfo("Bearer ${token.access_token}");

      var model = AuthModel(
        userName: username,
        token: token.access_token,
        dozvoljeneAkcije: userInfo.dozvoljeneAkcije,
        email: userInfo.email,
        frontendModul: userInfo.frontendModul,
        frontendModulNaslov: userInfo.frontendModulNaslov,
        punoIme: userInfo.punoIme,
        role: userInfo.role,
        ulogaId: userInfo.ulogaId,
      );

      singleton.get<SharedPreferencesHelper>().setIdentity(model);

      state = state.copyWith(identity: model, isLoading: false);
      return true;
    } catch (e) {
      state = state.copyWith(isLoading: false);
      return false;
    }
  }
}
