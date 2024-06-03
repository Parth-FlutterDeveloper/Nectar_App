import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_pro_3/Screens/Welcome_Screen.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Welcome_Screen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Image.asset("assets/images/s_carrot.png",
                scale: 21, color: Colors.white),
            Text(
              "nectar",
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ]),
          Padding(
            padding: EdgeInsets.only(left: 50,right: 50,top: 20),
            child: LinearProgressIndicator(
              backgroundColor: Colors.white,
              color: Colors.green,
              minHeight: 2,
            ),
          )
        ],
      ),
    );
  }
}
