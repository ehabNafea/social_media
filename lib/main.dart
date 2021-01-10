import 'package:flutter/material.dart';
import 'package:social_media/screen/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Colors.blue
        )
      ),
      home: LoginScreen(),
    );
  }
}

