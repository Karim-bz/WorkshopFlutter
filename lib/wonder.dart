import 'dart:math';

import 'package:flutter/material.dart';

import 'mycard.dart';

class WonderWorld extends StatefulWidget {
  WonderWorld({Key key}) : super(key: key);

  @override
  _WonderWorldState createState() => _WonderWorldState();
}

class _WonderWorldState extends State<WonderWorld> {
  var image = "china.png";

  List<String> list = List.of({
    "china.png",
    "england.png",
    "europe.png",
    "italy.png",
    "mexico.png",
    "petra.png"
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset("images/$image"),
                ElevatedButton(
                  child: Text('Open route'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyCard()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => {generateRandomWonder()},
          label: Text("Tap me"),
          // child: Icon(Icons.tap_and_play),
        ),
      ),
    );
  }

  generateRandomWonder() {
    var position = Random().nextInt(6);
    print(position);
    setState(() {
      image = list[position];
    });
  }
}
