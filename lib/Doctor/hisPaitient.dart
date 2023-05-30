import 'package:flutter/material.dart';

class hisPaition extends StatefulWidget {
  const hisPaition({Key? key}) : super(key: key);

  @override
  State<hisPaition> createState() => _hisPaitionState();
}

class _hisPaitionState extends State<hisPaition> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(appBar: AppBar(
        backgroundColor: Color(0xFFB799FF),
        title: Center(
          child: Text(
            "المرضى",
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
        body: ListView(
          children: [
            ListTile(
              leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200
                  ),
                  child: Icon(Icons.person_rounded,size: 30,),
              ),
              title: Text('احمد سالم'
                ,style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),),
            ),
            Divider(
                color: Colors.grey,
              thickness: 1,
              indent: 20,endIndent: 20,
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200
                ),
                child: Icon(Icons.person_rounded,size: 30,),
              ),
              title: Text('سارة احمد',
                style: TextStyle(
                fontSize: 18,
                  fontWeight: FontWeight.bold
              ),),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 20,endIndent: 20,
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200
                ),
                child: Icon(Icons.person_rounded,size: 30,),
              ),
              title: Text(' محمد محمود',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 20,endIndent: 20,
            ),
          ],
        ),
      ),
    );
  }
}
