import 'package:flutter/material.dart';

void main() {
  runApp(MyProfile());
}

class MyProfile extends StatelessWidget {
  const MyProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: columns()),
      ),
    );
  }

  Row rows() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        item(Colors.teal, "Cell 1"),
        item(Colors.green, "Cell 2"),
        item(Colors.red, "Karim"),
        SizedBox(
          height: double.infinity,
        )
      ],
    );
  }

  Column columns() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        item(Colors.teal, "Cell 1"),
        item(Colors.green, "Cell 2"),
        item(Colors.red, "Karim"),
        item(Colors.red, "Karim"),
        item(Colors.red, "Karim"),
        item(Colors.red, "Karim"),
        item(Colors.red, "Karim"),
        item(Colors.red, "Karim"),
        item(Colors.red, "Karim"),
      ],
    );
  }

  item(Color color, String text) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(16),
      height: 100,
      width: double.infinity,
      color: color,
      child: Center(child: Text(text)),
    ));
  }
}
