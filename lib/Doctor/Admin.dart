import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:theproject/Doctor/MainAdmin.dart';
import 'package:theproject/Doctor/Profile.dart';
import 'package:theproject/Doctor/add.dart';
import 'package:theproject/Doctor/hisPaitient.dart';

import 'Massage.dart';

class Admin extends StatefulWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  int _currentIndex = 0;
  final screens = [
    MainAdmin(),
    Massage(),
    Add(),
    hisPaition(),
    Profile()
  ];
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onNavItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F8FF),
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
      body: PageView(
        controller: _pageController,
        children: screens,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFFF4F8FF),
        color: Color(0xFFB799FF),
        animationDuration: Duration(milliseconds: 300),
        index: _currentIndex,
        items: [
          Icon(Icons.home),
          Icon(Icons.chat),
          Icon(Icons.add),
          Icon(Icons.people_rounded),
          Icon(Icons.person_rounded),
        ],
        onTap: _onNavItemTapped,
      ),
    );
  }
}
