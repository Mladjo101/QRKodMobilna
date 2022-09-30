import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'config/theme_config.dart';
import 'routes/index.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _App();
}

class _App extends State<App> {
  // #region Notification handling
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // It is assumed that all messages contain a data field with the key 'type'
  Future<void> setupInteractedMessage() async {
    final fcmToken = await FirebaseMessaging.instance.getToken();
    // Get any messages which caused the application to open from
    // a terminated state.
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }

    // Also handle any interaction when the app is in the background via a
    // Stream listener
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);

    await _setupNotificaionChannel();

    // Also handle any interaction when the app is in the foreground
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      // If `onMessage` is triggered with a notification, construct our own
      // local notification to show to users using the created channel.
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            const NotificationDetails(
              android: AndroidNotificationDetails(
                'high_importance_channel',
                'High Importance Notifications',
                channelDescription:
                    'This channel is used for important notifications.',
                //icon: android.smallIcon,
                // other properties...
              ),
            ));
      }
    });
  }

  void _handleMessage(RemoteMessage message) {
    if (message.data['type'] == 'feature1') {
      Navigator.pushNamed(
        context,
        '/feature1',
        arguments: message,
      );
    } else if (message.data['type'] == 'feature2') {
      Navigator.pushNamed(
        context,
        '/feature2',
        arguments: message,
      );
    } else if (message.data['type'] == 'feature3') {
      Navigator.pushNamed(
        context,
        '/feature3',
        arguments: message,
      );
    }
  }

  Future<void> _setupNotificaionChannel() async {
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      description:
          'This channel is used for important notifications.', // description
      importance: Importance.max,
      playSound: true,
    );

    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }
  // #endregion

  @override
  void initState() {
    super.initState();

    // Run code required to handle interacted messages in an async function
    // as initState() must not be async
    setupInteractedMessage();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starter',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeConfig.lightTheme,
      darkTheme: ThemeConfig.darkTheme,
      //themeMode: appState.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      onGenerateRoute: routes,
    );
  }
}
