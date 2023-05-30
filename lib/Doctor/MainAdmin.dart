import 'package:flutter/material.dart';

class MainAdmin extends StatefulWidget {
  const MainAdmin({Key? key}) : super(key: key);

  @override
  State<MainAdmin> createState() => _MainAdminState();
}

class _MainAdminState extends State<MainAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFB799FF),
        title: Center(
          child: Text(
            "القائمة",
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xffF4F8FF),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 300, top: 10),
                    child: Icon(
                      Icons.access_alarm,
                      size: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150, top: 20),
                    child: Text(
                      ':موعد يوم الثلاث  ',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 18,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w300,
                      ),
                      softWrap: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Text(
                      '9:00 باقي 2ي',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 15,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w300,
                      ),
                      softWrap: false,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 300, top: 10),
                    child: Icon(
                      Icons.access_alarm,
                      size: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150, top: 20),
                    child: Text(
                      ':موعد يوم الاحد  ',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 18,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w300,
                      ),
                      softWrap: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Text(
                      '10:00 باقي 5ي',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 15,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w300,
                      ),
                      softWrap: false,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 300, top: 10),
                    child: Icon(
                      Icons.access_alarm,
                      size: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150, top: 20),
                    child: Text(
                      ':موعد يوم الاحد  ',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 18,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w300,
                      ),
                      softWrap: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Text(
                      '9:00 باقي 6ي',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 15,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w300,
                      ),
                      softWrap: false,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
