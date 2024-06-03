import 'package:flutter/material.dart';
import 'package:flutter_pro_3/Home%20Widgets/Best_Selling.dart';
import 'package:flutter_pro_3/Home%20Widgets/Navbar_Widget.dart';
import 'package:flutter_pro_3/Screens/Apple_Screen.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {

  List<String> setImg = ['banana', 'apple'];

  List<String> setName = ['Organic Banana', 'Red Apple'];

  List<String> setQuantity = ['7 pcs, Priceg', '1kg, Priceg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 45, bottom: 10),
                  child: Center(
                      child: Image.asset(
                    "assets/images/carrot.png",
                    scale: 29,
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Mota Varachha, Surat",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 17, bottom: 10),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black12),
                    child: Padding(
                      padding: EdgeInsets.only(left: 7, right: 22),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search Store...",
                              prefixIcon: Icon(Icons.search)),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.red.shade100),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset("assets/images/veg.png"),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Fresh Vegetables",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Get Up To 40% OFF",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 13),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("Exclusive Orders",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 23))),
                      Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text("See All",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                  color: Colors.green))),
                    ]),
                SizedBox(height: 13),
                GridView.builder(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  itemCount: setName.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                    childAspectRatio: 0.72
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Apple_Screen()
                        ));
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
              ],
            ),
            SizedBox(height: 10,),
            Best_Selling(),
          ],
        ),
      ),
    );
  }
}
