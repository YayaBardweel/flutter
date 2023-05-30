import 'package:flutter/material.dart';

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({Key? key}) : super(key: key);

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Stack(
          children: [
            Container(
              child: Image.asset(
                  "assets/image/logo_transparent-removebg-preview.png"),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Container(
                width: 400,
                height: 500,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Colors.white,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 400, left: 40, right: 40),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        10), // Specify the circular border radius
                    color: Color(0xFFBC9FFF), // Specify the box color
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey, // Specify the divider color
                              width: 0.9, // Specify the divider width
                            ),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'UserName',
                            border:
                                InputBorder.none, // Remove the default border
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextField(
                          // Set the text alignment to center
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontFamily: "Tajawal",
                            ),
                            border: InputBorder.none,
                          ),
                          obscureText: true,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(top: 600),
              child: Container(
                width: double.infinity, // Take up the full width
                padding: EdgeInsets.symmetric(horizontal: 100),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "Admin"); // Add your sign in functionality here
                    },
                    child: Text('Sign In'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFBC9FFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130,top: 350),
              child: Container(
                child: Text(
                  "مرحبا بك مجددا ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(top:60,left: 10),
              child: Icon(Icons.arrow_back),
            ),
            onTap: (){Navigator.pushReplacementNamed(context, "AddScreen");},
          )
          ],
        ),
      ),
    );
  }
}
