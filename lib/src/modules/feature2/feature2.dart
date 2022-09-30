import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            AppLocalizations.of(context)!.feaure2 + "\n" + identity!.punoIme,
            style: const TextStyle(fontSize: 24),
          ),
        )
      ],
    );
  }
}
