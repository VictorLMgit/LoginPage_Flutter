import 'package:flutter/material.dart';
import 'package:login_screen/pages/Loguin_screen.dart';
import 'package:login_screen/pages/home_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  final routes = <String, WidgetBuilder>{
    LoguinScreen.tag: (context) => LoguinScreen(),
    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito'
      ),
      home: LoguinScreen(),
      routes: routes
    );
  }
}