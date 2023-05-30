import 'package:flutter/material.dart';

class aboutthedoc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Builder(
          builder: (context) {
            return Scaffold(
              body: Stack(
                children: [
                  Container(

                      child: Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20,top: 30),
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
                            padding:
                                const EdgeInsets.only(left: 256,top:30),
                            child: Text(
                              "المواعيد",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Tajawal'),
                            ),
                          ),

                        ],
                      )),
                  Align(
                    alignment: Alignment(0.453, 0.435),
                    child: SizedBox(
                      width: 119.0,
                      height: 30.0,
                      child: Text(
                        '0598455550',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 22,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w800,
                        ),
                        softWrap: false,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.1 * MediaQuery.of(context).size.height,
                    left: 90.0,
                    right: 91.0,
                    child: Align(
                      alignment: Alignment(1, 1),
                      child: Container(
                        width: double.infinity,
                        height: 193.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('assets/image/doc.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(9999.0),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.458, 0.547),
                    child: SizedBox(
                      width: 113.0,
                      height: 30.0,
                      child: Text(
                        'موعد العمل',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 22,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w800,
                        ),
                        softWrap: false,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.552, 0.202),
                    child: SizedBox(
                      width: 67.0,
                      height: 30.0,
                      child: Text(
                        'ahmed',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 22,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w800,
                        ),
                        softWrap: false,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.28, 0.32),
                    child: SizedBox(
                      width: 189.0,
                      height: 30.0,
                      child: Text(
                        'ahmed@gmail.com',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 22,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w800,
                        ),
                        softWrap: false,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.72 * MediaQuery.of(context).size.height,
                    left: 45.0,
                    child: SizedBox(
                      width: 60,
                      height: 30.0,
                      child: Text(
                        'م2:00',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 22,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w800,
                        ),
                        softWrap: false,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.68 * MediaQuery.of(context).size.height,
                    left: 50,
                    child: SizedBox(
                      width: 80,
                      height: 35,
                      child: Text(
                        '8:00 ص',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 22,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w800,
                        ),
                        softWrap: false,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.43 * MediaQuery.of(context).size.height,
                    left: 25.0,
                    right: 24.0,
                    child: SizedBox(
                      width: double.infinity,
                      height: 51.0,
                      child: Text(
                        'دكتور أحمد، جراح متمرس وذو خبرة في مجال الجراحة العامة.\nأعمل بتفانٍ واهتمام في تقديم الرعاية الطبية الشاملة للمرضى،\nمع التركيز على الدقة والأمان',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 13,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                  ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(top: 600),
                  child: Center(child: Icon(Icons.mail,size: 50,)),
                ),
            onTap: (){
              Navigator.pushNamed(context, "chat");

            },  )  ],
              ),
            );
          },
        ),

    );
  }
}
