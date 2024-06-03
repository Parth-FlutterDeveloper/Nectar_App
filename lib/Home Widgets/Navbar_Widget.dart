import 'package:flutter/material.dart';
import 'package:flutter_pro_3/Screens/Account_Screen.dart';
import 'package:flutter_pro_3/Screens/Cart_Screen.dart';
import 'package:flutter_pro_3/Screens/Explore_Screen.dart';
import 'package:flutter_pro_3/Screens/Favourite_Screen.dart';
import 'package:flutter_pro_3/Screens/Home_Screen.dart';

class Navbar_Widget extends StatefulWidget {
  const Navbar_Widget({super.key});

  @override
  State<Navbar_Widget> createState() => _Navbar_WidgetState();
}

class _Navbar_WidgetState extends State<Navbar_Widget> {

  int selectedIndex = 0;

  final screens = [
    Home_Screen(),
    Explore_Screen(),
    Cart_Screen(),
    Favourite_Screen(),
    Account_Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 10,
          ),
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },

          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Shop"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.manage_search_outlined),label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: "Favourite"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account"),
          ],
        ),
      ),
    );
  }
}
