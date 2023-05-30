import 'package:flutter/material.dart';
import 'package:theproject/Patient/ChatPage.dart';

class chat extends StatefulWidget {
  const chat({Key? key}) : super(key: key);

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:ChatPage());
  }
}
