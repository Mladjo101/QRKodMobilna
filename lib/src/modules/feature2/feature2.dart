import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:starter_project_flutter/src/config/color_constants.dart';
import 'package:starter_project_flutter/src/modules/feature2/subject_card.dart';

import '../../identity/auth_provider.dart';

class Feature2 extends ConsumerStatefulWidget {
  const Feature2({Key? key}) : super(key: key);

  @override
  Feature2State createState() => Feature2State();
}

class Feature2State extends ConsumerState<Feature2> {
  @override
  Widget build(BuildContext context) {
    var identity = ref.watch(authProvider).identity;

    return Container(
        width: MediaQuery.of(context)!.size.width,
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.only(left: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Predmeti",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: hexToColor("#182138")),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  child: Container(
                    margin: EdgeInsets.only(top: 2),
                    width: MediaQuery.of(context)!.size.width,
                    height: 2,
                    decoration: BoxDecoration(
                      color: hexToColor("#182138"),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SubjectCard(
                  subjectName: 'Razvoj Softvera',
                  totalClasses: 15,
                  attendedClasses: 13,
                  onTap: () {
                    print("Subject Card Tapped!");
                  },
                ),
                SizedBox(height: 15),
                SubjectCard(
                  subjectName: 'Razvoj Mobilnih Aplikacija',
                  totalClasses: 10,
                  attendedClasses: 1,
                  onTap: () {
                    print("Subject Card Tapped!");
                  },
                )
              ],
            )));
  }
}
