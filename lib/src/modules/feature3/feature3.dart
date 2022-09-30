import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Feature3 extends ConsumerStatefulWidget {
  const Feature3({Key? key}) : super(key: key);

  @override
  Feature3State createState() => Feature3State();
}

class Feature3State extends ConsumerState<Feature3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            AppLocalizations.of(context)!.feaure3,
            style: const TextStyle(fontSize: 24),
          ),
        )
      ],
    );
  }
}
