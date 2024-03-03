import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: categories(),debugShowCheckedModeBanner: false,));
}

class categories extends StatefulWidget {
  const categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("categories",style: TextStyle(color: Colors.black),)),);
  }
}
