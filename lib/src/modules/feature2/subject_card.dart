import 'package:flutter/material.dart';
import 'package:starter_project_flutter/src/config/color_constants.dart';

class SubjectCard extends StatelessWidget {
  final String subjectName;
  final int totalClasses;
  final int attendedClasses;
  final VoidCallback onTap; // Callback function for tap event

  SubjectCard({
    required this.subjectName,
    required this.totalClasses,
    required this.attendedClasses,
    required this.onTap, // Accept the callback in the constructor
  });

  @override
  Widget build(BuildContext context) {
    double attendancePercentage =
        (totalClasses > 0) ? (attendedClasses / totalClasses * 100) : 0;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9, // 80% of screen width
        child: Card(
          color: hexToColor("#FFFFFF"), // White background for the card
          elevation: 2, // Slight elevation for a subtle shadow
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color:
                  hexToColor("#00426C"), // Using the darker blue for contrast
              width: 1,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  subjectName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: hexToColor("#182138"), // Dark blue-gray for text
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2),
                  width: MediaQuery.of(context)!.size.width,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 24, 33, 56),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Realizovanih časova: $totalClasses',
                  style: TextStyle(
                    fontSize: 16,
                    color: hexToColor("#00426C"), // Dark blue for details
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Ukupno prisustvo:' /*${attendancePercentage.toStringAsFixed(1)}%'*/,
                  style: TextStyle(
                    fontSize: 16,
                    color: hexToColor("#00426C"),
                  ),
                ),
                SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey[300], // Set background color
                    valueColor: AlwaysStoppedAnimation<Color>(
                        attendancePercentage >= 75
                            ? Colors.green
                            : Colors.red), // Set progress color
                    value: attendancePercentage /
                        100, // Set the current progress (0.0 to 1.0)
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '12/15',
                      style: TextStyle(
                        fontSize: 12,
                        color: hexToColor("#00426C"),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '${attendancePercentage.toStringAsFixed(1) + '%'}',
                      style: TextStyle(
                        fontSize: 12,
                        color: hexToColor("#00426C"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
