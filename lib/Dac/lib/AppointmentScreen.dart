import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              leading:
              GestureDetector(
                child: Icon(Icons.arrow_back)
                ,onTap: (){
                Navigator.pushNamed(context, "Patient");
              },
              ),

              backgroundColor: Color(0xffB799FF),
              title: Center(
                child: Text(
                  "القائمة",
                  style: TextStyle(
                      fontFamily: "Tajawal"
                  ),
                ),
              ),
            )
            ,body:
        Column(
          children: [
            SizedBox(height: 100,)
            ,Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                child: Text(
                  "توقيت الموعد"
                  ,style: TextStyle(fontSize: 25),
                ),
              ),
            )
            ,Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                  child: Text(
                      "ص9:00"
                      ,style: TextStyle(
                      fontFamily: "Tajawal"
                      ,fontWeight: FontWeight.bold
                      ,fontSize: 25
                  )

                  )
              ),
            )
            ,Divider(
              thickness: 5
              ,indent: 10,
            )
            ,Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                child: Text(
                  "مكان الموعد"
                  ,style: TextStyle(fontSize: 25),
                ),
              ),
            )
            ,Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                  child: Text(
                      "قسم الجراحة الطابق الاول_"
                      ,style: TextStyle(
                      fontFamily: "Tajawal"
                      ,fontWeight: FontWeight.bold
                      ,fontSize: 20
                  )

                  )
              ),
            )
            ,Divider(
              thickness: 5
              ,indent: 10,
            )
            ,Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                child: Text(
                  "ملاحظات الطبيب"
                  ,style: TextStyle(fontSize: 25),
                ),
              ),
            )
            ,Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                  child: Text(
                      "عدم التدخين قبل الموعد _"
                      ,style: TextStyle(
                      fontFamily: "Tajawal"
                      ,fontWeight: FontWeight.bold
                      ,fontSize: 25
                  )

                  )
              ),
            )
            ,Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                  child: Text(
                      "عدم شرب المشروبات الغازية _"
                      ,style: TextStyle(
                      fontFamily: "Tajawal"
                      ,fontWeight: FontWeight.bold
                      ,fontSize: 25
                  )

                  )
              ),
            )
            ,Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                  child: Text(
                      "احضار مرافق _"
                      ,style: TextStyle(
                      fontFamily: "Tajawal"
                      ,fontWeight: FontWeight.bold
                      ,fontSize: 25
                  )

                  )
              ),
            )

          ],
        )
        )
    );
  }

}

