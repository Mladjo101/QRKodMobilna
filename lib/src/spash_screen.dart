import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_project_flutter/src/identity/auth_provider.dart';

import 'config/color_constants.dart';
import 'config/image_constants.dart';
import 'helpers/route_helper.dart';

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
    var authState = ref.watch(authProvider).identity;
    bool authIsLoading = ref.watch(authProvider).isLoading;

    bool notificationOpened = ref.watch(authProvider).notificationOpened;

    if (!authIsLoading && (!notificationOpened || notificationClosed)) {
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
