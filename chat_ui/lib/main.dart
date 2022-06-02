import 'package:chat_ui/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false, 
      title: "Chat UI",
     theme:  ThemeData(
       primaryColor: Colors.blue,
       accentColor: Color(0xFFFEF9EB),
     ),
     home: HomeScreen(), 
    );
  }
}