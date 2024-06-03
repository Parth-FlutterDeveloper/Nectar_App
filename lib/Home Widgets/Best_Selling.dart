import 'package:flutter/material.dart';
import 'package:flutter_pro_3/Screens/Apple_Screen.dart';

class Best_Selling extends StatefulWidget {
  const Best_Selling({super.key});

  @override
  State<Best_Selling> createState() => _Best_SellingState();
}

class _Best_SellingState extends State<Best_Selling> {

  List<String> setImg = ['bell', 'ginger'];

  List<String> setName = ['Bell Pepper', 'Ginger'];

  List<String> setQuantity = ['1kg, Priceg', '250gm, Priceg'];

  //----------------------------------------------------------

  List<String> setGroceries = ['beans','fruitvegi'];

  List<String> setGroName = ['Pulses','Vegetables'];

  List<Color> setColor = [
    Colors.green.shade100,
    Colors.red.shade100
  ];

  // --------------------------------------------------------

  List<String> nonImg = ['meat', 'chicken'];

  List<String> nonName = ['Meat', 'Chicken'];

  List<String> nonQuantity = ['Per Pieces', '2kg, Priceg'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Best Selling",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 23))),
              Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text("See All",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 21,
                          color: Colors.green))),
            ]
        ),
        SizedBox(height: 13),
        GridView.builder(
          padding: EdgeInsets.only(left: 20, right: 20),
          itemCount: setName.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              childAspectRatio: 0.666
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Apple_Screen() ));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 11, left: 30, right: 30),
                      child: Image.asset("assets/images/${setImg[index]}.png"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
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
                      child: Text("${setQuantity[index]}"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 11,left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$4.99",style: TextStyle(
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
        SizedBox(height: 11),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Groceries",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 23))),
              Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text("See All",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 21,
                          color: Colors.green))),
            ]
        ),
        SizedBox(height: 8,),
        Container(
          padding: EdgeInsets.only(left: 18,right: 18),
          height: MediaQuery.of(context).size.height * 0.14,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                  child: Card(
                    color: setColor[index],
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 13,right: 10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/images/${setGroceries[index]}.png"),
                              radius: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 21),
                              child: Text("${setGroName[index]}",style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                color: Colors.black
                              ),),
                            )
                          ],
                        ),
                      )
                    ),
                  )
                );
              },
            itemCount: setImg.length,
          ),
        ),
        SizedBox(height: 11),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Nonveg",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 23))),
              Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text("See All",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 21,
                          color: Colors.green))),
            ]
        ),
        SizedBox(height: 13),
        GridView.builder(
          padding: EdgeInsets.only(left: 20, right: 20,bottom: 20),
          itemCount: setName.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              childAspectRatio: 0.77
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Apple_Screen() ));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                      child: Image.asset("assets/images/${nonImg[index]}.png"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 15,top: 10),
                        child: Text(
                          "${nonName[index]}",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 19,
                              color: Colors.black),)
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:15),
                      child: Text("${nonQuantity[index]}"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 14,left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$4.99",style: TextStyle(
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
      ],
    );
  }
}
