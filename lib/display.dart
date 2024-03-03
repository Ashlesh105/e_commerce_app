import 'package:flutter/material.dart';
import 'accounts.dart';
import 'cart.dart';
import 'categories.dart';
import 'home.dart';

class display extends StatefulWidget {
  const display({super.key});

  @override
  State<display> createState() => _displayState();
}

class _displayState extends State<display> {
  int myIndex = 0;
  List<Widget> widgetList = [home(), categories(), account(), cart()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurpleAccent,
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            label: "Home",),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.category_outlined,
                color: Colors.black,
              ),
              label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.black,
              ),
              label: "Account"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
              label: "Cart"),
        ],
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
      ),
    );
  }
}

