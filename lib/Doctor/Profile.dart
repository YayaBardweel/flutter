import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFB799FF),
        title: Center(
          child: Text(
            "الصفحة شخصية ",
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 250,top:50),
            child: Container(height: 135,width: 135,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/image/doc.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.elliptical(100, 100.0)),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),

          ),Padding(
            padding: const EdgeInsets.only(left: 180,top:70),
            child: Text(
              'Ahmed',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 18,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w800,
              ),
              softWrap: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150,top: 65),
            child: Icon(Icons.person_rounded),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80,top:100),
            child: Text(
              'ahmed@gmail.com',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 18,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w800,
              ),
              softWrap: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50,top:93),
            child: Icon(Icons.email),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130,top: 130),
            child: Text(
              '0598455550',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 18,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w800,
              ),
              softWrap: false,
            ),
          ), Padding(
            padding: const EdgeInsets.only(left: 100,top:124),
            child: Icon(Icons.phone),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,top: 250),
            child: Text(
              'أنا دكتور أحمد، جراح متمرس وذو خبرة في مجال الجراحة العامة.\n أعمل بتفانٍ واهتمام في تقديم الرعاية الطبية الشاملة للمرضى،\n مع التركيز على الدقة والأمان.',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 13,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Divider(thickness: 2,color: Colors.black,),
          ),Padding(
            padding: const EdgeInsets.only(top: 310),
            child: Divider(thickness: 3,color: Colors.grey,),
          ),Padding(
            padding: const EdgeInsets.only(top: 70,left: 200),
            child: Center(
              child: Text(
                'آخر المشاهدات',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 20,
                  color: const Color(0xff000000),
                ),
                softWrap: false,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:360,top: 330 ),
            child: Icon(Icons.restart_alt),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 260,top: 380),
            child: Text(
              'المساعدة',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 20,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              softWrap: false,
            ),
          ),Padding(
            padding: const EdgeInsets.only(left: 350,top: 160),
            child: Center(child: Icon(Icons.info_outline)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 190,top:260 ),
            child: Center(
              child: GestureDetector(
                child: Text(
                  'تسجيل الخروج',
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 20,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w500,
                  ),
                  softWrap: false,
                ),
                onTap: (){
                  Navigator.pushNamed(context, "LoginScreen1");
                },
              ),
            ),
          ),
          Center(child: Padding(
            padding: const EdgeInsets.only(left: 350,top:255),
            child: Icon(Icons.exit_to_app),
          ))





        ],
      ),
    );
  }
}
