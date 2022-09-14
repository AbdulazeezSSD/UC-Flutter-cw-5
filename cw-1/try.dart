import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var player1 = 1;
  var player2 = 1;
  var res = " ";

  void play() {
    player1 = Random().nextInt(3) + 1;
    player2 = Random().nextInt(3) + 1;
    if (player1 == 1 && player2 == 3) {
      res = ("player1 Won !");
    } else if (player1 == 3 && player2 == 2) {
      res = ("player1 Won !");
    } else if (player1 == 2 && player2 == 1) {
      res = ("player1 Won !");
    } else if (player2 == 1 && player1 == 3) {
      res = ("player2 Won !");
    } else if (player2 == 3 && player1 == 2) {
      res = ("player2 Won !");
    } else if (player2 == 2 && player1 == 1) {
      res = ("player2 Won !");
    } else {
      res = ("Draw !");
    }

    setState(() {});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 230, 0),
          title: Text('RockPaperScissors'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.all(30),
                      child: Image.asset(
                        "asset/img/i_$player1.png",
                        height: 120,
                        width: 120,
                      )),
                  Container(
                      padding: EdgeInsets.all(30),
                      child: Image.asset(
                        "asset/img/i_$player2.png",
                        height: 120,
                        width: 120,
                      ))
                ],
              ),
              ElevatedButton(
                child: Text("Play"),
                onPressed: () {
                  play();
                },
              ),
              Text(res),
            ],
          ),
        ),
      ),
    );
  }
}
