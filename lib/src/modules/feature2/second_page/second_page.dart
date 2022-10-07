import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        /* if (Get.previousRoute == "/") {
          Navigator.pushNamedAndRemoveUntil(context, '/home', (r) => false);
          return false;
        } */
        // You can do some work here.
        // Returning true allows the pop to happen, returning false prevents it.
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
        ),
        body: Center(child: Text("Second page")),
      ),
    );
  }
}
