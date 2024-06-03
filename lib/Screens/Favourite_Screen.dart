import 'package:flutter/material.dart';

class Favourite_Screen extends StatefulWidget {
  const Favourite_Screen({super.key});

  @override
  State<Favourite_Screen> createState() => _Favourite_ScreenState();
}

class _Favourite_ScreenState extends State<Favourite_Screen> {

  bool selected = false;

  List<String> setImg = ['banana', 'apple', 'coke', 'sprite', 'back'];

  List<String> setName = ['Organic Banana', 'Red Apple', 'Dite Coke', 'Sprite', 'Bakery'];

  List<String> setQuantity = ['7 pcs, Priceg', '1kg, Priceg', '250ml,Price', '250ml,Price', '1kg,Price'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Favourite Items",style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search here..."
                ),
              ),
            ),
            SizedBox(height: 20),
            GridView.builder(
              padding: EdgeInsets.only(left: 20, right: 20),
              itemCount: setName.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.64
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    selected = !selected;
                                  });
                                },
                                icon: selected
                                    ? Icon(Icons.favorite,color: Colors.green,)
                                    : Icon(Icons.favorite_border)
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
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
                          padding: EdgeInsets.only(top: 7,left: 15),
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
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
