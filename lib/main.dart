import 'package:flutter/material.dart';

import './StartPage/splash.dart';

import './StartPage/intro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus Dost',
      theme: ThemeData(
        fontFamily: 'Geometria',
        primarySwatch: Colors.blue
      ),
      home: SplashPage(),
      
      debugShowCheckedModeBanner: false,
    );
  }
}

