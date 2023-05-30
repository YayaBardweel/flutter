import 'package:flutter/material.dart';
import 'package:theproject/Dac/lib/aboutthedoc.dart';

import '../Dac/lib/aboutBoxtime.dart';

class Patient extends StatefulWidget {
  const Patient({Key? key}) : super(key: key);

  @override
  State<Patient> createState() => _PatientState();
}

class _PatientState extends State<Patient> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xffAEE2FF),
        appBar: AppBar(
          backgroundColor: Color(0xFFBC9FFF),
          title: Center(
              child: Text(
            "القائمة",
            style: TextStyle(
                fontFamily: "Tajawal",
                fontWeight: FontWeight.bold,
                fontSize: 25),
          )),
        ),
        body: PageView(
          reverse: true,
          children: [
            Stack(children: [
              Container(
                color: Colors.white,


              ),
               Container(
                  child:  Padding(
                    padding: const EdgeInsets.only(top:35,left: 20),
                    child: Text(
                        "معلومات الطبيب",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Tajawal'),
                      ),
                  ),),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 256, top:35),
                        child: Text(
                          "المواعيد",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Tajawal'),
                        ),
                      ),
                    ),
              AboutBoxTime()
           ] ),

            Container(
                color: Color(0xFFAEE2FF),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 600),
                      child: Text(
                        "معلومات الطبيب",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Tajawal',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 115, bottom: 600),
                      child: Text(
                        "المواعيد",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Tajawal'),
                      ),
                    ),
                 aboutthedoc() ],
                )),
          ],
        ),
    );
  }
}
