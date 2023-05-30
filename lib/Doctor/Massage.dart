import 'package:flutter/material.dart';

class Massage extends StatefulWidget {
  const Massage({Key? key}) : super(key: key);

  @override
  State<Massage> createState() => _MassageState();
}

class _MassageState extends State<Massage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFB799FF),
        title: Center(
          child: Text(
            "الدردشة",
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
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 10),
            child: GestureDetector(
              child: Container(
                height: 70,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 230),
                      child: Icon(
                        Icons.person_rounded,
                        size: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Center(
                          child: Text(
                        "احمد سالم ",
                        style: TextStyle(fontSize: 20, fontFamily: 'Tajawal'),
                      )),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, "chat");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 10),
            child: GestureDetector(
              child: Container(
                height: 70,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.grey),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 230),
                      child: Icon(
                        Icons.person_rounded,
                        size: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Center(
                          child: Text(
                        " سارة احمد ",
                        style: TextStyle(fontSize: 20, fontFamily: 'Tajawal'),
                      )),
                    )
                  ],
                ),
              ),onTap: () {
              Navigator.pushReplacementNamed(context, "chat");
            },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 10),
            child: GestureDetector(
              child: Container(
                height: 70,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.grey),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 230),
                      child: Icon(
                        Icons.person_rounded,
                        size: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Center(
                          child: Text(
                        "عبود احمد ",
                        style: TextStyle(fontSize: 20, fontFamily: 'Tajawal'),
                      )),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, "chat");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 10),
            child: GestureDetector(
              child: Container(
                height: 70,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.grey),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 230),
                      child: Icon(
                        Icons.person_rounded,
                        size: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Center(
                          child: Text(
                        "محمد عبد ",
                        style: TextStyle(fontSize: 20, fontFamily: 'Tajawal'),
                      )),
                    )
                  ],
                ),
              ),onTap: () {
              Navigator.pushReplacementNamed(context, "chat");
            },
            ),
          ),
        ],
      ),
    );
  }
}
