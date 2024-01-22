import 'package:flutter/material.dart';
import 'package:starter_project_flutter/src/config/color_constants.dart';

class ProfilePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50, // Adjust the size as needed
              backgroundImage: AssetImage(
                  'assets/avatar.jpg'), // Placeholder for profile picture
            ),
            SizedBox(height: 20),
            _buildProfileField('Name', 'John Doe'),
            _buildProfileField('Surname', 'Doe'),
            _buildProfileField('Index Number', '123456'),
            _buildProfileField('Email', 'john.doe@example.com'),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileField(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: hexToColor("#182138"),
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
              color: hexToColor("#00426C"),
            ),
          ),
        ],
      ),
    );
  }
}
