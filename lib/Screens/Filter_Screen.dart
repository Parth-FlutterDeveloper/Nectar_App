import 'package:flutter/material.dart';

class Filter_Screen extends StatefulWidget {
  const Filter_Screen({super.key});

  @override
  State<Filter_Screen> createState() => _Filter_ScreenState();
}

class _Filter_ScreenState extends State<Filter_Screen> {

  bool cValue1 = false;
  bool cValue2 = false;
  bool cValue3 = false;
  bool cValue4 = false;

  bool bValue1 = false;
  bool bValue2 = false;
  bool bValue3 = false;
  bool bValue4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 43),
            Padding(
              padding: EdgeInsets.only(left: 3,right: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                  SizedBox(width: 117),
                  Text("Filters",style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.only(left: 23),
              child: Text("Categories",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,right: 100),
              child: Column(
                children: [
                  CheckboxListTile(
                    title: Text("Eggs",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                    value: cValue1,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    onChanged: (value) {
                      setState(() {
                        cValue1 = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text("Noodles & Pasta",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                    value: cValue2,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    onChanged: (value) {
                      setState(() {
                        cValue2 = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text("Chips & Crisps",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                    value: cValue3,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    onChanged: (value) {
                      setState(() {
                        cValue3 = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text("Fast Food",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                    value: cValue4,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    onChanged: (value) {
                      setState(() {
                        cValue4 = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 23),
              child: Text("Brand",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,right: 100),
              child: Column(
                children: [
                  CheckboxListTile(
                    title: Text("Individual Collection",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                    value: bValue1,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    onChanged: (value) {
                      setState(() {
                        bValue1 = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text("Coca Cola",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                    value: bValue2,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    onChanged: (value) {
                      setState(() {
                        bValue2 = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text("Ifad",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                    value: bValue3,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    onChanged: (value) {
                      setState(() {
                        bValue3 = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text("Kazi Foemas",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                    value: bValue4,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    onChanged: (value) {
                      setState(() {
                        bValue4 = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  )
                ],
              ),
            ),
            SizedBox(height: 130),
            Padding(
              padding: EdgeInsets.only(left: 13,right: 13),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.green
                  ),
                  padding: EdgeInsets.symmetric(vertical: 4,horizontal: 121.5),
                  child: Text("Apply Filter",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
