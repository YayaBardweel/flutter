import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacementNamed(context, "AddScreen");

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xFFBC9FFF),
          body: Stack(children:   [
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Center(
                child: Lottie.asset(
                    "assets/Animation/12-hospital.json",
                    width: 300,height: 300
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50,left: 50,top:400),
              child: Container(
                child: Image.asset("assets/image/logo_transparent-removebg-preview.png"),
              ),
            ),

            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 700),
                child: Text(
                  "version: 1.0.0.1 ",
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                      fontSize: 17

                  ),
                ),
              ),
            ),

          ])),
    );
  }
}
