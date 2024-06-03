import 'package:flutter/material.dart';
import 'package:flutter_pro_3/Screens/Login_Screen.dart';
import 'package:flutter_pro_3/Screens/Register_Screen.dart';

class Account_Screen extends StatelessWidget {
  const Account_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30,right: 30),
              child: Image.asset("assets/images/acc1.png"),
            ),
            Text("Please Register \nTo Placed Order",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10),
            Text("You must be a User\n to placed an Order.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),),
            SizedBox(height: 60),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Register_Screen()
                ));
              },
              child: Padding(
                padding: EdgeInsets.only(left: 20,right: 20,top: 6,bottom: 6),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 90,vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: Text("Register",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                      color: Colors.white
                  ),),
                ),
              ),
            ),
            SizedBox(height: 5),
            Text("OR",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
            SizedBox(height: 5),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Login_Screen()));
              },
              child: Padding(
                padding: EdgeInsets.only(left: 20,right: 20,top: 6,bottom: 6),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 104,vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: Text("Log In",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                      color: Colors.white
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
