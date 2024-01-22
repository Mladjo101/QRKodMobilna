import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_project_flutter/src/config/color_constants.dart';
import 'package:starter_project_flutter/src/helpers/notification_helper.dart';
import 'package:starter_project_flutter/src/modules/feature1/feature1.dart';
import 'package:starter_project_flutter/src/modules/feature2/feature2.dart';
import 'package:starter_project_flutter/src/modules/feature3/feature3.dart';

class HomeScreen extends ConsumerStatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  int selectedIndex = 0;

  HomeScreenState();

//list of widgets to call ontap
  final widgetOptions = [
    new Feature1(),
    new Feature2(),
    new ProfilePageContent(),
  ];
  final widgetTitle = ["Prisustva", "Historija", "Profil"];
  final navigatorKey = GlobalKey<NavigatorState>();

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widgetTitle.elementAt(selectedIndex),
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: hexToColor("#182138"),
        elevation: 0,
      ),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: hexToColor("#182138"),
        key: navigatorKey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.done_all_sharp,
                color: Colors.white,
              ),
              label: "Prisustva"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.class_outlined,
                color: Colors.white,
              ),
              label: "Predmeti"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_sharp,
                color: Colors.white,
              ),
              label: "Profil"),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: onItemTapped,
        selectedLabelStyle: const TextStyle(color: Colors.red, fontSize: 20),
      ),
    );
  }
}
