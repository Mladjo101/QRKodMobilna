import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_project_flutter/src/config/color_constants.dart';
import 'package:starter_project_flutter/src/identity/auth_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends ConsumerWidget {
  LoginScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> validationKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool authIsLoading = ref.watch(authProvider).isLoading;
    void login() async {
      if (validationKey.currentState != null &&
          validationKey.currentState!.validate()) {
        var loginResult = await ref
            .read(authProvider.notifier)
            .login(usernameController.text, passwordController.text);

        if (loginResult) {
          Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
        } else {
          const snackBar = SnackBar(
            content: Text('Login failed'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      }
    }

    void loginMock() {
      Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
    }

    return Scaffold(
      backgroundColor: hexToColor("#182138"),
      body: Form(
        key: validationKey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 50),
                  child: Image.asset(
                    'assets/myLogo.png', // Replace with your image asset or network image
                    width: 185,
                    height: 100.0, // Adjust the size as needed
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: AppLocalizations.of(context)!.username,
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 182, 182, 182)),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60.0),
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60.0),
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60.0),
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                    controller: usernameController,
                    autocorrect: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppLocalizations.of(context)!.required;
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: AppLocalizations.of(context)!.password,
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 182, 182, 182)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60.0),
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60.0),
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60.0),
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppLocalizations.of(context)!.required;
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: TextButton.icon(
                    onPressed: () {
                      loginMock();
                    },
                    label: Text(
                      'Prijavi se',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    icon: Icon(
                      Icons.login,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
