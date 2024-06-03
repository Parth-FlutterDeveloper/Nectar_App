import 'package:flutter/material.dart';
import 'package:flutter_pro_3/Screens/Beverages_Screen.dart';

class Explore_Screen extends StatefulWidget {
  const Explore_Screen({super.key});

  @override
  State<Explore_Screen> createState() => _Explore_ScreenState();
}

class _Explore_ScreenState extends State<Explore_Screen> {

  List<String> setImages = [
    'fruitvegi',
    'veg',
    'meat',
    'back',
    'egg',
    'bevera'
  ];

  List<String> setName = [
    'Fruits',
    'Vegetables',
    'Meat',
    'Bakery',
    'Eggs',
    'Beverages'
  ];

  List<Color> setColor = [
    Colors.green.shade50,
    Colors.orange.shade50,
    Colors.orange.shade50,
    Colors.purple.shade50,
    Colors.green.shade50,
    Colors.blue.shade50
  ];

  List<Color> setBColor = [
    Colors.green.shade300,
    Colors.orange.shade300,
    Colors.orange.shade300,
    Colors.purple.shade300,
    Colors.green.shade300,
    Colors.blue.shade300
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
                SizedBox(height: 50),
                Text("Find Products",style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),),
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
            GridView.builder(
              padding: EdgeInsets.only(left: 20,right: 20,top: 30),
              itemCount: setName.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.83
                ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Beverages_Screen()
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: setColor[index],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: setBColor[index],width: 2)
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset("assets/images/${setImages[index]}.png"),
                          margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${setName[index]}",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
