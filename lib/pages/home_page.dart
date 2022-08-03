import 'dart:html';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    // final profile = Hero(
    //   tag: 'hero', 
    //   child: CircleAvatar(
    //     backgroundColor: Colors.transparent,
    //     radius: 72,
    //     child: Image.asset('images/alucard.jpg'),
    //   )

    // );

  final welcome = Padding(
    padding: EdgeInsets.all(28),
    child: Text("Welcome!", style: TextStyle(color: Colors.white, fontSize: 28),)

    );

  final lorem = Padding(
    padding: EdgeInsets.all(28),
    child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", style: TextStyle(color: Colors.white, fontSize: 16),)

    );

  final body = Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.all(28),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.blue , Colors.lightBlueAccent]
      )
    ),
    child: Column(
      children: [
        // profile,
        welcome,
        lorem
      ],
    ),
  );

    return Scaffold(
      body: body,
    );
  }
}