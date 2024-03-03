import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: account(),debugShowCheckedModeBanner: false,));
}

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("account",style: TextStyle(color: Colors.black),)),);
  }
}

