import 'package:flutter/material.dart';

class ContactType extends StatefulWidget {
  @override
  _ContactTypeState createState() => _ContactTypeState();
}

class _ContactTypeState extends State<ContactType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.only(left:8.0,right: 8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: new Text(
                  "Departments",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4285f4),
                    letterSpacing: 0.8,
                    fontFamily: "Geometria",
                    fontSize: 28.0,
                    wordSpacing: 5,
                  ),
                ),
              ),
              
              Padding(padding: EdgeInsets.all(8.0)),
              Container(
                  width: double.infinity,
                  child: Card(
                    color: Color(0xff4285f4),
                      elevation: 8.0,
                      margin: EdgeInsets.all(8.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                     
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 28.0,right: 28.0,top:8.0,bottom: 8.0),
                                    child: new Text(
                                      "Computer Science and Engineering ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        letterSpacing: 0.5,
                                        fontFamily: "Gilroy",
                                        fontSize: 20.0,
                                        wordSpacing: 1,
                                        height: 1.5,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                 
                  )
              )
            ]
          )
          
        )
        ),
      ),
    );
  }
}