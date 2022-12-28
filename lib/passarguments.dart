import 'package:flutter/material.dart';
import 'package:pass_args/screenarguments.dart';

class PassScreenArguments extends StatelessWidget {
  const PassScreenArguments({super.key});

  static const routeName = '/passArguments';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}
