import 'package:flutter/material.dart';
import 'package:flutter_pro_3/Home%20Widgets/AlertDialog_Widget.dart';

class CheckOut_Sheet extends StatelessWidget {
  const CheckOut_Sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Check Out",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.dangerous_rounded,size: 29,)
                )
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 20,right: 20),
              child: Divider(height: 2)
          ),

          Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery",style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),),
                Row(
                  children: [
                    Text("Select Methods",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios_outlined)
                    ),
                  ],
                )
              ],
            ),
          ),

          Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Divider(height: 2)
          ),

          Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Payment",style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54
                ),),
                Row(
                  children: [
                    Icon(Icons.payment),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios_outlined)
                    ),
                  ],
                )
              ],
            ),
          ),

          Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Divider(height: 2)
          ),

          Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Promo Code",style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54
                ),),
                Row(
                  children: [
                    Text("Pick Discount",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios_outlined)
                    ),
                  ],
                )
              ],
            ),
          ),

          Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Divider(height: 2)
          ),

          Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Cost",style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54
                ),),
                Row(
                  children: [
                    Text("\$30.99",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios_outlined)
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Divider(height: 2)
          ),
          Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("By placing an order you agree to our "),
                      Text("Terms ",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                      ),),
                      Text("And"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Conditions.",style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ],
              )
          ),
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      surfaceTintColor: Colors.green.shade100,
                      actions: [
                        AlertDialog_Widget()
                      ],
                    );
                  }
              );
            },
            child: Padding(
              padding: EdgeInsets.only(left: 20,right: 20,top: 6,bottom: 6),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 107,vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                child: Text("Place Order",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  color: Colors.white
                ),),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
