import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_project_flutter/src/identity/auth_provider.dart';

import 'config/color_constants.dart';
import 'config/image_constants.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({Key? key}) : super(key: key);

  void navigate(context, ruta) {
    Future.microtask(() => Navigator.pushNamed(context, ruta));
  }

  Widget build(BuildContext context, WidgetRef ref) {
    var authState = ref.watch(authProvider).identity;
    bool authIsLoading = ref.watch(authProvider).isLoading;

    if (!authIsLoading) {
      if (authState != null) {
        Future.microtask(() =>
            Navigator.pushNamedAndRemoveUntil(context, '/home', (r) => false));
      } else {
        Future.microtask(() =>
            Navigator.pushNamedAndRemoveUntil(context, '/auth', (r) => false));
      }
    }

    return Scaffold(
      backgroundColor: ColorConstants.secondaryAppColor,
      body: Center(
        child: Image.asset(AllImages().logo),
      ),
    );
  }
}
