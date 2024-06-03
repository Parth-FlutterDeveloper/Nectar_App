import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Apple_Screen extends StatelessWidget {
  const Apple_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,)
            ),
            Container(
              height: 230,
              margin: EdgeInsets.only(left: 21,right: 21),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: Colors.green.shade100,
              ),
              child: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Image.asset("assets/images/apple.png")),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Red Apple",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          "1kg, Priceg",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16
                          ),
                        )
                      ],
                    ),
                  ]),
                  Icon(
                      Icons.favorite_border,
                    size: 28,
                  ),
                ],
              ),
            ),
            SizedBox(height: 31,),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: Colors.black45)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                    child: Icon(
                      Icons.remove,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 23,right: 23),
                    child: Text("1",style: TextStyle(
                      fontSize: 27
                    ),),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(color: Colors.black45)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 150,),
                  Text("\$4.99",style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w400,
                  ),)
                ],
              ),
            ),
            SizedBox(height: 40,),
        
        
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                height: 1,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
        
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                    child: Text("Product Details",style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 21
                    ),)
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.arrow_forward_ios_sharp
                  ),
                )
              ],
            ),
        
        
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                height: 1,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
        
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Nutritions",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 21
                    ),)
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 2,horizontal: 2),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(1)
                      ),
                      child: Text("100gm"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:7,right: 20),
                      child: Icon(
                          Icons.arrow_forward_ios_sharp
                      ),
                    ),
                  ],
                )
              ],
            ),
        
        
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                height: 1,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
        
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Review",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 21
                    ),)
                ),
                Row(
                  children: [
                    RatingBarIndicator(
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 28,
                      rating: 3.5,
                      direction: Axis.horizontal,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7,right: 20),
                      child: Icon(
                          Icons.arrow_forward_ios_sharp
                      ),
                    )
                  ],
                )
              ],
            ),
        
        
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                height: 1,
                color: Colors.black,
              ),
            ),
        
            SizedBox(height: 60,),
        
            InkWell(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.only(left: 21),
                padding: EdgeInsets.symmetric(vertical: 3,horizontal: 81),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.green.shade400,
                ),
                child: Text(
                  "Add To Basket",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
