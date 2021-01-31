import 'package:flutter/material.dart';
import 'package:nso_clone/routes/chat.dart';
import 'package:nso_clone/routes/main.dart';
import 'package:nso_clone/routes/settings.dart';
import 'package:nso_clone/routes/tutorial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MainRoute(),
        '/chat': (BuildContext context) => ChatRoute(),
        '/settings': (BuildContext context) => SettingsRoute(),
        '/tutorial': (BuildContext context) => TutorialRoute()
      },
    );
  }
}