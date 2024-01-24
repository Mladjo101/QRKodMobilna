import 'package:flutter/material.dart';
import 'package:starter_project_flutter/src/config/color_constants.dart';

class AttendanceCard extends StatelessWidget {
  final String day;
  final String month;
  final String className;
  final String time;

  AttendanceCard({
    required this.day,
    required this.month,
    required this.className,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white, // White background for the card
      elevation: 0, // Remove default shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Rounded corners for the card
      ),
      child: Row(
        children: <Widget>[
          // Calendar-like section
          Container(
            color: hexToColor("#00426C"), // Dark blue background
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Column(
              children: <Widget>[
                Text(
                  day,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  month.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            // Class name and time section
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: Colors.white, // Dark blue-gray background
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    className,
                    style: TextStyle(
                      color: Color.fromARGB(255, 24, 33, 56),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2),
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    width: MediaQuery.of(context)!.size.width,
                    height: 1,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 24, 33, 56),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  SizedBox(height: 2), // Add some space between the two widgets
                  Text(
                    "Vrijeme predavanja:  " + time,
                    style: TextStyle(
                      color: Color.fromARGB(255, 24, 33, 56),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
