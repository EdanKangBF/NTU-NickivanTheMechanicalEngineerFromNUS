import 'package:flutter/material.dart';
import 'package:flutter_application/mainpage.dart';
import 'package:flutter_application/splash_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UNIdhealth",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
      ),
      home: MainPage(),
    );
  }
}
