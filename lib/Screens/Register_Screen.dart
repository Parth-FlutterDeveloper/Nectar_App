import 'package:flutter/material.dart';
import 'package:flutter_pro_3/Home%20Widgets/Navbar_Widget.dart';
import 'package:flutter_pro_3/Screens/Login_Screen.dart';

class Register_Screen extends StatefulWidget {
  const Register_Screen({super.key});

  @override
  State<Register_Screen> createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {

  bool seePassword = false;

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
            Center(
              child: Container(
                child: Image.asset(
                  "assets/images/reg.png",
                  color: Colors.green,
                  scale: 5.50,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 27, right: 27),
              child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)
                      ),
                      hintText: "Enter Name",
                      prefixIcon: Icon(Icons.person),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide:
                              BorderSide(color: Colors.green, width: 2)
                      ),
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 27, right: 27, top: 20),
              child: TextFormField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11)
                ),
                hintText: "Enter Email",
                prefixIcon: Icon(Icons.email),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.green, width: 2)),
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 27, right: 27, top: 20),
              child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)
                      ),
                      hintText: "Enter Phone Number",
                      prefixIcon: Icon(Icons.phone),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide:
                              BorderSide(color: Colors.green, width: 2)
                      )
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 27, right: 27, top: 20),
              child: TextFormField(
                obscureText: seePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11)
                  ),
                  hintText: "Enter Password",
                  prefixIcon: Icon(Icons.password),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        seePassword = !seePassword;
                      });
                    },
                    icon: seePassword
                        ? Icon(Icons.remove_red_eye_outlined)
                        : Icon(Icons.remove_red_eye),
                  )
                ),
              ),
            ),
            SizedBox(height: 45),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Navbar_Widget()
                ));
              },
              child: Padding(
                padding: EdgeInsets.only(left: 28,right: 20,top: 6,bottom: 6),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 117,vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: Text("Register",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 29,
                      color: Colors.white
                  ),),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 59),
                Text("Already have an Account ?",style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Login_Screen()));
                    },
                    child: Text("Log In",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.green
                    ),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
