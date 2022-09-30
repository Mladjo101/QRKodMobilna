import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../helpers/shared_preferences.dart';
import '../../startup.dart';

class Feature1 extends ConsumerStatefulWidget {
  const Feature1({Key? key}) : super(key: key);

  @override
  Feature1State createState() => Feature1State();
}

class Feature1State extends ConsumerState<Feature1> {
  Future<void> logout() async {
    await singleton.get<SharedPreferencesHelper>().removeIdentity();
    Navigator.pushNamedAndRemoveUntil(context, "/auth", (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: <Widget>[
            Text(
              AppLocalizations.of(context)!.feaure1,
              style: const TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: logout,
              child: Text(AppLocalizations.of(context)!.logout),
            )
          ],
        )
      ],
    );
  }
}
