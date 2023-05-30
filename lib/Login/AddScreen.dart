import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddScreen extends StatefulWidget {
  @override
  State<AddScreen> createState() => _AddScreenState();
}
class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xFFE6FFFD),
          body: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Center(
                child: Lottie.asset("assets/Animation/12-hospital.json",
                    width: 200, height: 200),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 50, top: 350),
              child: Container(
                child: Image.asset(
                    "assets/image/logo_transparent-removebg-preview.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 560, left: 200, right: 50),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: GestureDetector(onTap: (){
                  Navigator.pushReplacementNamed(context, "LoginScreen1");
                },
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 560, left: 50, right: 200),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
              child: GestureDetector(onTap: (){
                Navigator.pushReplacementNamed(context, "LoginScreen2");

              },

              ),  )),
            Padding(
              padding: const EdgeInsets.only(top: 570, left: 240, right: 30),
              child: Container(
                child: Text(
                  "الطبيب",
                  style: TextStyle(fontSize: 20, fontFamily: 'Tajawal'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 570, left: 90, right: 230),
              child: Container(
                child: Text(
                  "المريض",
                  style: TextStyle(fontSize: 20, fontFamily: 'Tajawal'),
                ),
              ),
            ),
          ]),
        ));
  }
}
