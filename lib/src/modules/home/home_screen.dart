import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
    new Feature3(),
  ];
  final widgetTitle = ["Feature 1", "Feature 2", "Feature 3"];
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
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        key: navigatorKey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.messenger,
                color: Colors.blue,
              ),
              label: "Feature 1"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.stacked_line_chart_outlined,
                color: Colors.blue,
              ),
              label: "Feature 2"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
                color: Colors.blue,
              ),
              label: "Feature 3"),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: onItemTapped,
        selectedLabelStyle: const TextStyle(color: Colors.red, fontSize: 20),
      ),
    );
  }
}
