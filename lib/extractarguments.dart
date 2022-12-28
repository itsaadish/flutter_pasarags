import 'package:flutter/material.dart';
import 'package:pass_args/screenarguments.dart';

class ExtractScreenArguments extends StatelessWidget {
  const ExtractScreenArguments({super.key});

  static const routeName = '/extractArguments';

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
