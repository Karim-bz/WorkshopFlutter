import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mStyle = GoogleFonts.lobster(
      color: Colors.white,
      fontSize: 35,
    );
    var mStyleTwo = GoogleFonts.alegreya(
      color: Colors.white,
      letterSpacing: 8,
    );

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              createAvator(),
              myText("Karim Bouzid", mStyle),
              myText("Mobile Developer", mStyleTwo),
              buildDivider(),
              myCard("+216 94 770 763", Icons.call),
              myCard("kaarimbouzid@gmail.com", Icons.email),
            ],
          ),
        ),
      ),
    );
  }

  Divider buildDivider() {
    return Divider(
      color: Colors.white,
      indent: 34,
      endIndent: 34,
    );
  }

  createAvator() {
    return CircleAvatar(
      backgroundImage: AssetImage("images/me.jpg"),
      radius: 80,
    );
  }

  myText(String text, TextStyle myStyle) {
    return Text(
      text,
      style: myStyle,
    );
  }

  myCard(String text, IconData icon) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.all(18),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.blue,
        ),
        title: Text(text),
      ),
    );
  }
}
