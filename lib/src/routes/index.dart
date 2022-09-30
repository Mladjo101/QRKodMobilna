import 'package:flutter/material.dart';

import '../modules/auth/login_screen.dart';
import '../modules/feature1/feature1.dart';
import '../modules/feature2/feature2.dart';
import '../modules/feature3/feature3.dart';
import '../modules/home/home_screen.dart';
import '../spash_screen.dart';

Route routes(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case '/home':
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case '/auth':
      return MaterialPageRoute(builder: (_) => LoginScreen());
    case '/feature1':
      return MaterialPageRoute(builder: (_) => const Feature1());
    case '/feature2':
      return MaterialPageRoute(builder: (_) => const Feature2());
    case '/feature3':
      return MaterialPageRoute(builder: (_) => const Feature3());
    default:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
  }
}
