import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

    return Scaffold(
      body: Form(
        key: validationKey,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 70),
                child: const FlutterLogo(
                  size: 40,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: AppLocalizations.of(context)!.username,
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
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: AppLocalizations.of(context)!.password,
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
              Container(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: login,
                  child: authIsLoading
                      ? const CircularProgressIndicator()
                      : Text(AppLocalizations.of(context)!.login),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
