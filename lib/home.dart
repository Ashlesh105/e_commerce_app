import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: home(),
    debugShowCheckedModeBanner: false,
  ));
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "home",
        style: TextStyle(color: Colors.black),
      )),
    );
  }
}
