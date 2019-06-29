import 'package:flutter/material.dart';
import 'intro.dart';
import 'dart:async';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin{

AnimationController _iconAnimationController;
Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    
      _iconAnimationController = new AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 300)
    );
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.elasticOut
    );

     _iconAnimation.addListener(()=>this.setState((){}));
    _iconAnimationController.forward();

    Future.delayed(Duration(seconds: 3),
    () {

      Navigator.pushReplacement(context, 
      MaterialPageRoute(
        builder: (context) => IntroPage()
      ),
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: FlutterLogo(
          size: _iconAnimation.value * 200,
          ),
      )
    );
  }
}