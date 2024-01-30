import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:starter_project_flutter/src/config/color_constants.dart';
import 'package:starter_project_flutter/src/modules/feature2/subject.dart';
import 'package:starter_project_flutter/src/modules/feature2/subject_card.dart';
import 'package:starter_project_flutter/src/services/prisustva_service.dart';

import '../../identity/auth_provider.dart';

class Feature2 extends ConsumerStatefulWidget {
  const Feature2({Key? key}) : super(key: key);

  @override
  Feature2State createState() => Feature2State();
}

class Feature2State extends ConsumerState<Feature2> {
  List<Map<String, dynamic>> subjectList = [
    {
      "subjectName": 'Razvoj Softvera',
      "totalClasses": 15,
      "attendedClasses": 13,
    },
    {
      "subjectName": 'Razvoj Mobilnih Aplikacija',
      "totalClasses": 10,
      "attendedClasses": 1,
    },
    {
      "subjectName": 'Razvoj Softvera',
      "totalClasses": 15,
      "attendedClasses": 13,
    },
    {
      "subjectName": 'Razvoj Mobilnih Aplikacija',
      "totalClasses": 10,
      "attendedClasses": 1,
    },
    {
      "subjectName": 'Razvoj Softvera',
      "totalClasses": 15,
      "attendedClasses": 13,
    },
    {
      "subjectName": 'Razvoj Mobilnih Aplikacija',
      "totalClasses": 10,
      "attendedClasses": 1,
    },
    {
      "subjectName": 'Razvoj Softvera',
      "totalClasses": 15,
      "attendedClasses": 13,
    },
    {
      "subjectName": 'Razvoj Mobilnih Aplikacija',
      "totalClasses": 10,
      "attendedClasses": 1,
    },
    {
      "subjectName": 'Razvoj Softvera',
      "totalClasses": 15,
      "attendedClasses": 13,
    },
    {
      "subjectName": 'Razvoj Mobilnih Aplikacija',
      "totalClasses": 10,
      "attendedClasses": 1,
    },
    {
      "subjectName": 'Razvoj Softvera',
      "totalClasses": 15,
      "attendedClasses": 13,
    },
    {
      "subjectName": 'Razvoj Mobilnih Aplikacija',
      "totalClasses": 10,
      "attendedClasses": 1,
    },
    {
      "subjectName": 'Razvoj Softvera',
      "totalClasses": 15,
      "attendedClasses": 13,
    },
    {
      "subjectName": 'Razvoj Mobilnih Aplikacija',
      "totalClasses": 10,
      "attendedClasses": 1,
    },
    {
      "subjectName": 'Razvoj Softvera',
      "totalClasses": 15,
      "attendedClasses": 13,
    },
    {
      "subjectName": 'Razvoj Mobilnih Aplikacija',
      "totalClasses": 10,
      "attendedClasses": 1,
    }
    // Add more subjects as needed
  ];

  @override
  Widget build(BuildContext context) {
    var identity = ref.watch(authProvider).identity;

    return SingleChildScrollView(
      child: Container(
          width: MediaQuery.of(context)!.size.width,
          color: Color.fromARGB(255, 24, 33, 56),
          child: Padding(
              padding: EdgeInsets.only(left: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 15, left: 15),
                    child: Container(
                      margin: EdgeInsets.only(top: 2),
                      width: MediaQuery.of(context)!.size.width,
                      height: 0,
                      decoration: BoxDecoration(
                        color: hexToColor("#182138"),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  FutureBuilder<List<Subject>>(
                    future: PrisustvaService().fetchSubjects(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else if (snapshot.hasData) {
                        List<Subject> subjects = snapshot.data!;
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: subjects.length,
                          itemBuilder: (context, index) {
                            Subject subject = subjects[index];
                            return Column(
                              children: [
                                SubjectCard(
                                  subjectName: subject.nazivPredmeta ?? '',
                                  totalClasses: subject.odrzanih ?? 0,
                                  attendedClasses: subject.prisutnih ?? 0,
                                  onTap: () {
                                    print("Subject Card Tapped!");
                                  },
                                ),
                                SizedBox(height: 20),
                              ],
                            );
                          },
                        );
                      } else {
                        return Text("No data available");
                      }
                    },
                  )
                ],
              ))),
    );
  }
}
