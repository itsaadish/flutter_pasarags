import 'package:flutter/material.dart';
import 'package:pass_args/extractarguments.dart';
import 'package:pass_args/passarguments.dart';
import 'package:pass_args/screenarguments.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routes: {
        ExtractScreenArguments.routeName: (context) =>
            const ExtractScreenArguments(),
        PassScreenArguments.routeName: (context) => const PassScreenArguments(),
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pass Arguments"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    ExtractScreenArguments.routeName,
                    arguments: ScreenArguments(
                      'Extract Arguments Screen',
                      'This message is extracted in the build method.',
                    ),
                  );
                },
                child: Text('Navigate to screen that passes arguments')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    PassScreenArguments.routeName,
                    arguments: ScreenArguments(
                      'Pass Arguments Screen',
                      'This message is extracted in the build method.',
                    ),
                  );
                },
                child: Text('Navigate to screen that extracts arguments'))
          ],
        ),
      ),
    );
  }
}
