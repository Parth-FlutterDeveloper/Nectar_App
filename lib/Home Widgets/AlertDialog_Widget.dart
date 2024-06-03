import 'package:flutter/material.dart';
import 'package:flutter_pro_3/Home%20Widgets/Navbar_Widget.dart';
import 'package:flutter_pro_3/Screens/OrderAccept_Screen.dart';

class AlertDialog_Widget extends StatelessWidget {
  const AlertDialog_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.dangerous_rounded,size: 29,),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Container(
              child: Image.asset("assets/images/bag.png",scale: 3,),
            ),
            Text("Oops! Order Failed",style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),),
            Text("Somethings went wrong",style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 26),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => OrderAccept_Screen()
                ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 4,horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                child: Text("Please Try Again",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Colors.white
                ),),
              ),
            ),
            SizedBox(height: 5),
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
