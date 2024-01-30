import 'package:flutter/material.dart';
import 'package:starter_project_flutter/src/config/color_constants.dart';
import 'package:starter_project_flutter/src/helpers/shared_preferences.dart';
import 'package:starter_project_flutter/src/modules/feature3/user_profile.dart';
import 'package:starter_project_flutter/src/services/prisustva_service.dart';
import 'package:starter_project_flutter/src/startup.dart';

class ProfilePageContent extends StatelessWidget {
  Color hexToColor(String hex) {
    assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
        'hex color must be #rrggbb or #rrggbbaa');

    return Color(
      int.parse(hex.substring(1), radix: 16) +
          (hex.length == 7 ? 0xff000000 : 0x00000000),
    );
  }

  @override
  Widget build(BuildContext context) {
    Future<void> logout() async {
      final navigator = Navigator.of(context);
      await singleton.get<SharedPreferencesHelper>().removeIdentity();
      navigator.pushNamedAndRemoveUntil("/auth", (route) => false);
    }

    return Container(
        color: Color.fromARGB(255, 24, 33, 56),
        child: FutureBuilder<UserProfile>(
          future: PrisustvaService().fetchUserProfile(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              UserProfile profile = snapshot.data!;
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 60),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'assets/avatar.jpg'), // Consider fetching an actual image URL
                    ),
                    SizedBox(height: 20),
                    _buildProfileField('Name', profile.firstName ?? 'N/A'),
                    _buildProfileField('Surname', profile.lastName ?? 'N/A'),
                    // _buildProfileField('Role', profile.role ?? 'N/A'),
                    _buildProfileField('Email', profile.email ?? 'N/A'),
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ElevatedButton(
                          onPressed: () async {
                            await logout();
                          },
                          child: Text('Odjava'),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Color.fromARGB(255, 24, 33, 56),

                            minimumSize: Size(double.infinity, 50),
                            side: BorderSide.none,
                            textStyle: TextStyle(
                              color: Color.fromARGB(255, 24, 33, 56),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            elevation: 6, // This sets the size of the shadow
                            shadowColor: Colors.white,
                          ),
                        ))
                  ],
                ),
              );
            } else {
              return Text("No data available");
            }
          },
        ));
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
              color: Colors.white,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
