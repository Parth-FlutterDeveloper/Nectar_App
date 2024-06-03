import 'package:flutter/material.dart';
import 'package:flutter_pro_3/Home%20Widgets/Navbar_Widget.dart';

class OrderAccept_Screen extends StatelessWidget {
  const OrderAccept_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100),
            Container(
              margin: EdgeInsets.only(left: 30,right: 30),
              child: Image.asset("assets/images/complete.png",color: Colors.green.shade400,),
            ),
            SizedBox(height: 60),
            Text("Your Order Has\nBeen Accepted",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10),
            Text("Your item has been placed and is\n   on it's way to being processed",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black54
            ),),
            SizedBox(height: 60),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 4,horizontal: 90),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green.shade400,
                ),
                child: Text("Track Order",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                    color: Colors.white
                ),),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Navbar_Widget()
                ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 4,horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("Back To Home",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
