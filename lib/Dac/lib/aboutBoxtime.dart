import 'package:flutter/material.dart';

class AboutBoxTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFE9F0F3) ,
      body: Column(
        children: [
          Stack(
            children: [
               Padding(
                 padding: const EdgeInsets.only(right: 100,top: 30),
                 child: Text(
                  "معلومات الطبيب",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal'),
              ),
               ),
              Padding(
                padding: const EdgeInsets.only(left: 200,top: 30),
                child: Text(
                  "المواعيد",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal'),
                ),
              )]),
          SizedBox(height: 100,),
          GestureDetector(
            child: Center(
              child: Center(
                child: Container(
                  height: 50,
                  width:300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.cyan
                  ),
                  child: Center(child: Text("الموعد الاول        8.00ص",style:TextStyle(
                    fontSize: 20,fontFamily: 'Tajawal',fontWeight: FontWeight.w700
                  ) ,)),
                ),
              ),
            ),
            onTap: (){
              Navigator.pushNamed(context, 'AppointmentScreen');
            },
          ),
          SizedBox(height: 50,),
          Center(
            child: Center(
              child: Container(
                height: 50,
                width:300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.cyan
                ),child: Center(child: Text("الموعد الثاني        10.00ص",style:TextStyle(
                  fontSize: 20,fontFamily: 'Tajawal',fontWeight: FontWeight.w700
              ) ,)),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Center(
            child: Center(
              child: Container(
                height: 50,
                width:300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.cyan
                ),child: Center(child: Text("الموعد الثالث        11.00ص",style:TextStyle(
                  fontSize: 20,fontFamily: 'Tajawal',fontWeight: FontWeight.w700
              ) ,)),
              ),
            ),
          ),


        ],
      )
    );
  }
}

