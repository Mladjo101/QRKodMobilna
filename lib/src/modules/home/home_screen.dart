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
  final widgetTitle = ["Prisustva", "Predmeti", "Profil"];
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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                widgetTitle.elementAt(selectedIndex),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontFamily: 'openSans',
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              margin: EdgeInsets.only(top: 2),
              width: MediaQuery.of(context)!.size.width,
              height: 1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ],
        ),
        backgroundColor: hexToColor("#182138"),
        elevation: 0,
      ),
      body: Container(
        color: Color.fromARGB(255, 24, 33, 56),
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        key: navigatorKey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.done_all_sharp,
                  color: Color.fromARGB(255, 24, 33, 56)),
              label: "Prisustva"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.class_outlined,
                color: Color.fromARGB(255, 24, 33, 56),
              ),
              label: "Predmeti"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_sharp,
                color: Color.fromARGB(255, 24, 33, 56),
              ),
              label: "Profil"),
        ],
        currentIndex: selectedIndex,
        fixedColor: Color.fromARGB(255, 24, 33, 56),
        unselectedItemColor: Color.fromARGB(255, 24, 33, 56),
        onTap: onItemTapped,
        selectedLabelStyle: const TextStyle(color: Colors.red, fontSize: 20),
      ),
    );
  }
}
