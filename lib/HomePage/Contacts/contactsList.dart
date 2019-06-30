import 'package:campus_dost/HomePage/Contacts/contactDetails.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContactCardState();
  }
}

class ContactCardState extends State<ContactCard> {
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
                  "Contact List",
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
                   child: GestureDetector(
                    onTap:()=> Navigator.push(context, 
      MaterialPageRoute(
        builder: (context) => ContactDetails()
      ),
      ),
                  child: Card(
                      elevation: 8.0,
                      margin: EdgeInsets.all(8.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Dr. Shivam Mahajan",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                      fontFamily: "Gilroy",
                                      fontSize: 18.0,
                                      wordSpacing: 1,
                                      height: 1.3,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "Dean of Academics",
                                    //textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.5,
                                      fontFamily: "Gilroy",
                                      fontSize: 16.0,
                                      wordSpacing: 1,
                                      height: 1.2,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                              Container(padding: EdgeInsets.only(left: 44.0),
                                child: Image.asset(
                                  
                                  'assets/default_user.png',
                                  scale: 2.2,
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          )))),)
            ],
              
          ),
        ),
        ),
      ),
    );
  }
}
