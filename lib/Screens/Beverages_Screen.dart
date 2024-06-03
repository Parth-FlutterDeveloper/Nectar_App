import 'package:flutter/material.dart';
import 'package:flutter_pro_3/Screens/Filter_Screen.dart';

class Beverages_Screen extends StatefulWidget {
  const Beverages_Screen({super.key});

  @override
  State<Beverages_Screen> createState() => _Beverages_ScreenState();
}

class _Beverages_ScreenState extends State<Beverages_Screen> {

  List<String> setImages = [
    'coke',
    'sprite',
    'coke',
    'coke',
    'coke',
    'coke'
  ];

  List<String> setName = [
    'Dite Coke',
    'Sprite Can',
    'Orange Juice',
    'Apple Juice',
    'Coca Cola',
    'Pepsi Can'
  ];

  List<String> setQua = [
    '350ml, Price',
    '250ml, Price',
    '1L, Price',
    '1L, Price',
    '350ml, Price',
    '250ml, Price'
  ];

  List<String> setPrice = [
    '\$2.99',
    '\$2.85',
    '\$18.5',
    '\$18.5',
    '\$3.89',
    '\$4.99',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 43),
            Padding(
              padding: EdgeInsets.only(left: 3,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                  Text("Beverages",style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Filter_Screen()
                        ));
                      },
                      icon: Icon(
                        Icons.sort,
                        size: 27,
                        color: Colors.black
                      )
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            GridView.builder(
              padding: EdgeInsets.only(left: 16, right: 16),
              itemCount: setName.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  childAspectRatio: 0.72
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 12, left: 30, right: 30),
                          child: Image.asset("assets/images/${setImages[index]}.png"),
                        ),
                        SizedBox(height: 14),
                        Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "${setName[index]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19,
                                  color: Colors.black),)
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:15),
                          child: Text("${setQua[index]}"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 11,left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${setPrice[index]}",style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black
                              ),),
                              Container(
                                margin: EdgeInsets.only(right: 15),
                                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.green
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 12,)
          ],
        ),
      ),
    );
  }
}
