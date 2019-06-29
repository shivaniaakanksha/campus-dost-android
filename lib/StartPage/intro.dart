import 'package:campus_dost/HomePage/homePage.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        width: double.infinity,
        height: double.infinity,
        decoration: new BoxDecoration(color: Colors.white),
        child: new SingleChildScrollView(
          // child: new Container(
          //   margin: const EdgeInsets.all(8.0),

            child: new Column(
              children: <Widget>[
                    Padding(
                    padding:
                        const EdgeInsets.only(top: 120.0, left: 32.0, right: 32.0),
                    child: new Image.asset(
                      "assets/intro_image.png",
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(
                      
                      padding: const EdgeInsets.all(44.0),
                      child: new Text(
                        "Take advantage of the on-the-fly" +
                            '\n' +
                            "color image generation to match" +
                            '\n' +
                            "your brand identity.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            fontFamily: "Gilroy",
                            fontSize: 16.0,
                            wordSpacing: 1,
                            height: 1.2),
                      ),
                    ),

                         Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: new RaisedButton(
                      splashColor: Color(0xff65b3ed),
                      
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(100.0)),
                      child: Padding(
                        padding: const EdgeInsets.only(left:40.0,top: 12.0,bottom: 12.0,right: 40.0),
                        child: new Text(
                          "Continue",
                          
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            letterSpacing: 0.5,
                            fontFamily: "Gilroy",
                            fontSize: 20.0,
                            wordSpacing: 1,


                          ),
                        ),
                      ),
                      color: Color(0xff4285f4),
                      onPressed: () {
                        Navigator.pushReplacement(context, 
      MaterialPageRoute(
        builder: (context) => HomePage()
      ),
      );
                      },
                    ),
                  )
                
              ],
            ),
          ),
        ),
      // ),
    );
  }
}
