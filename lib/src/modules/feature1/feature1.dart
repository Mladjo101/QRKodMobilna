import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:starter_project_flutter/src/config/color_constants.dart';
import 'package:starter_project_flutter/src/modules/feature1/attendance_card.dart';

import '../../helpers/shared_preferences.dart';
import '../../startup.dart';

class Feature1 extends ConsumerStatefulWidget {
  const Feature1({Key? key}) : super(key: key);

  @override
  Feature1State createState() => Feature1State();
}

class Feature1State extends ConsumerState<Feature1> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  String? qrText = "";
  QRViewController? controller;
  Future<void> logout() async {
    final navigator = Navigator.of(context);
    await singleton.get<SharedPreferencesHelper>().removeIdentity();
    navigator.pushNamedAndRemoveUntil("/auth", (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    void _onQRViewCreated(QRViewController controller) {
      this.controller = controller;
      controller.scannedDataStream.listen((scanData) {
        setState(() {
          qrText = scanData.code;
        });
      });
    }

    return Container(
        color: Color.fromARGB(255, 24, 33, 56),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  'Dobrodošli',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
            SizedBox(height: 30), // Adds space between the text and the button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // Action to perform when the button is pressed
                    Navigator.pushNamed(context, '/qr');
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    width: MediaQuery.of(context)!.size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Registruj prisustvo',
                          style: TextStyle(
                              color: Color.fromARGB(255, 24, 33, 56),
                              fontSize: 21),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.photo_camera,
                          color: Color.fromARGB(255, 24, 33, 56),
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Nedavna prisustva",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 15),
              width: (MediaQuery.of(context).size.width / 100) * 95,
              child: Column(
                children: [
                  AttendanceCard(
                      day: "24",
                      month: "NOV",
                      className: "Razvoj Softvera",
                      time: "17:24PM")
                ],
              ),
            )
          ],
        ));
  }
}
