
import 'package:flutter/material.dart';
import 'package:theproject/Dac/lib/aboutBoxtime.dart';
import 'package:theproject/Dac/lib/AppointmentScreen.dart';
import 'package:theproject/Doctor/Admin.dart';
import 'package:theproject/Doctor/add.dart';
import 'package:theproject/Patient/chat.dart';

import 'Dac/lib/aboutthedoc.dart';
import 'Login/AddScreen.dart';
import 'Login/LoginScreen.dart';
import 'Login/LoginScreen1.dart';
import 'Patient/LoginScreen2.dart';
import 'Patient/Patient.dart';

void main() async {
  runApp( MainScreen());
 }
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  Widget build(BuildContext context) {
    return (MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'LoginScreen',
        routes: {
          'LoginScreen': (context)=> LoginScreen(),
          'LoginScreen2': (context)=> LoginScreen2(),
          'AddScreen': (context)=>  AddScreen(),
          'LoginScreen1': (context)=> LoginScreen1(),
          'Admin': (context)=> Admin(),
          'Patient': (context)=> Patient(),
          'AppointmentScreen': (context) => AppointmentScreen(),
          'AboutBoxTime': (context) => AboutBoxTime(),
          'chat': (context) => chat(),


        }
    ));
  }
}
