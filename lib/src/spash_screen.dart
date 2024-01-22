import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_project_flutter/src/identity/auth_provider.dart';
import 'package:starter_project_flutter/src/startup.dart';

import 'config/color_constants.dart';
import 'config/image_constants.dart';
import 'helpers/route_helper.dart';
import 'helpers/shared_preferences.dart';

class SplashScreen extends ConsumerStatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends ConsumerState<SplashScreen> with RouteAware {
  bool notificationClosed = false;

  @override
  void didPopNext() {
    //This is used when the app is started from a notification
    ref.read(authProvider.notifier).notificationOpened();
    setState(() {
      notificationClosed = true;
    });
    super.didPopNext();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      RouteHelper.routeObserver.subscribe(this, ModalRoute.of(context)!);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // var authState = ref.watch(authProvider).identity;
    // bool authIsLoading = ref.watch(authProvider).isLoading;
    // var infoINeed = singleton.get<SharedPreferencesHelper>().getExpirationDate();
    // bool notificationOpened = ref.watch(authProvider).notificationOpened;
    // DateTime todaysDate = DateTime.now();
    // DateTime twoDaysAfter = todaysDate.add(Duration(days: 2));
    Future.microtask(() =>
        Navigator.pushNamedAndRemoveUntil(context, '/auth', (r) => false));
    // if (!authIsLoading && (!notificationOpened || notificationClosed)) {
    //   if (authState != null) {
    //     if (singleton.get<SharedPreferencesHelper>().getExpirationDate() !=
    //         null) {
    //       if (singleton
    //           .get<SharedPreferencesHelper>()
    //           .getExpirationDate()!
    //           .isBefore(twoDaysAfter)) {
    //         Future.microtask(() => Navigator.pushNamedAndRemoveUntil(
    //             context, '/auth', (r) => false));
    //       }
    //     }
    //   Future.microtask(() =>
    //       Navigator.pushNamedAndRemoveUntil(context, '/home', (r) => false));
    // } else {
    //   Future.microtask(() =>
    //       Navigator.pushNamedAndRemoveUntil(context, '/auth', (r) => false));
    // }
    // }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(AllImages().logo),
      ),
    );
  }
}
