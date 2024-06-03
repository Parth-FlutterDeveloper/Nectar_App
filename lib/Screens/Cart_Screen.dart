import 'package:flutter/material.dart';
import 'package:flutter_pro_3/Home%20Widgets/CheckOut_Sheet.dart';

class Cart_Screen extends StatefulWidget {
  const Cart_Screen({super.key});

  @override
  State<Cart_Screen> createState() => _Cart_ScreenState();
}

class _Cart_ScreenState extends State<Cart_Screen> {
  List<String> setImages = [
    'apple',
    'bell',
    'ginger',
    'banana',
    'coke',
    'meat'
  ];

  List<String> setName = [
    'Apple',
    'Bell Pepper',
    'Ginger',
    'Banana',
    'Dite Coke',
    'Meat'
  ];

  List<String> setQua = [
    '1kg, Price',
    '500gm, Price',
    '250gm, Price',
    '12pcs, Price',
    '250ml, Price',
    '2kg, Price'
  ];

  List<String> setPrice = [
    '\$4.99',
    '\$2.99',
    '\$3.99',
    '\$5.99',
    '\$2.99',
    '\$7.99'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
          ListView.builder(
            itemCount: setName.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Divider(color: Colors.black, height: 1)),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 16, right: 16, top: 30, bottom: 30),
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Image.asset("assets/images/${setImages[index]}.png"),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${setName[index]}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                            ),
                          ),
                          Text(
                            "${setQua[index]}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey),
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    border: Border.all(color: Colors.black45)),
                                child: Icon(
                                  Icons.remove,
                                  size: 30,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 23, right: 23),
                                child: Text(
                                  "1",
                                  style: TextStyle(fontSize: 23),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    border: Border.all(color: Colors.black45)),
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(width: 77),
                      Container(
                        height: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.delete, size: 27),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 15),
                              child: Text(
                                "${setPrice[index]}",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              );
            },
          ),
              Padding(
                padding: EdgeInsets.only(left: 16,right: 16),
                  child: Divider(color: Colors.black,height: 1,)
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: (){
                  showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return CheckOut_Sheet();
                      },
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 16),
                  padding: EdgeInsets.symmetric(vertical: 7,horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Check Out",style: TextStyle(
                          fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white
                      ),),
                      Text("\$30.99",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white
                      ),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
            ]
        ),
      ),
    );
  }
}
