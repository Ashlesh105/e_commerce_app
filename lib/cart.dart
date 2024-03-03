import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: cart(),debugShowCheckedModeBanner: false,));
}

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("cart",style: TextStyle(color: Colors.black),)),);
  }
}


