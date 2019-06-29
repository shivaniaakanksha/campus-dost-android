// import 'package:campus_dost/more.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContactDetailsState();
  }
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(left:4.0,right: 4.0),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40.0),
                    child: new Text(
                      "Contact Details",
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

//card-1
                  Container(
                    height: 150.0,
                    margin: EdgeInsets.all(8.0),
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                      elevation: 10.0,
                      child: new Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: new Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: new Image.asset(
                                "assets/default_user.png",
                                scale: 1.4,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0),
                              ),
                              elevation: 10.0,
                              margin: EdgeInsets.all(10),
                            ),
                          ),

                          new Column(
                            children: <Widget>[
                               Padding(
                                  padding: EdgeInsets.only(top:16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Dr. Shivam Mahajan",
                                        //textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.5,
                                          fontFamily: "Gilroy",
                                          fontSize: 18.0,
                                          wordSpacing: 1,
                                          height: 1.5,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Administration",
                                        //textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontFamily: "Gilroy",
                                          fontSize: 16.0,
                                          height: 1.2,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        "Dean of Academics",
                                        //textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontFamily: "Gilroy",
                                          fontSize: 16.0,
                                          height: 1.2,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 10.0, bottom: 10.0),
                                          child: Text(
                                            "Status : Available",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 0.5,
                                              fontFamily: "Gilroy",
                                              fontSize: 20.0,
                                              wordSpacing: 1,
                                              height: 1.2,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                    ]
                               ),
                               )]
                          )
                        ],
                      ),
                    ),
                  ),

                  //card-2
                 
                  
                     Container(
                    margin: EdgeInsets.all(8.0),
                    width: double.infinity,
                       child: Card(
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "+91 9876543210",
                                    //textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.5,
                                      fontFamily: "Gilroy",
                                      fontSize: 16.0,
                                      wordSpacing: 1,
                                      height: 1.3,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 10.0, left: 16.0),
                                  child: Text(
                                    "Main | Office",
                                    //textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.5,
                                      fontFamily: "Gilroy",
                                      fontSize: 14.0,
                                      wordSpacing: 1,
                                      height: 1,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top:2.0,bottom: 2.0,right: 8.0,left: 8.0),
                                  child: Divider(

                                    height: 2,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "+91 9876543210",
                                    //textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.5,
                                      fontFamily: "Gilroy",
                                      fontSize: 16.0,
                                      wordSpacing: 1,
                                      height: 1.3,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 10.0, left: 16.0),
                                  child: Text(
                                    "Main | Residence",
                                    //textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.5,
                                      fontFamily: "Gilroy",
                                      fontSize: 14.0,
                                      wordSpacing: 1,
                                      height: 1.2,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top:2.0,bottom: 2.0,right: 8.0,left: 8.0),
                                  child: Divider(
                                    height: 2,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "shivam.mahajan@kiet.edu",
                                    //textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.5,
                                      fontFamily: "Gilroy",
                                      fontSize: 16.0,
                                      wordSpacing: 1,
                                      height: 1.3,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 10.0, left: 16.0),
                                  child: Text(
                                    "College Email",
                                    //textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.5,
                                      fontFamily: "Gilroy",
                                      fontSize: 14.0,
                                      wordSpacing: 1,
                                      height: 1.2,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                Padding(
                                padding: EdgeInsets.only(top:2.0,bottom: 2.0,right: 8.0,left: 8.0),
                                  child: Divider(
                                    height: 2,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Room NO. 207 ,E-Block",
                                    //textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.5,
                                      fontFamily: "Gilroy",
                                      fontSize: 16.0,
                                      wordSpacing: 1,
                                      height: 1.3,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 10.0, left: 16.0),
                                  child: Text(
                                    "Cabin Location",
                                    //textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 0.5,
                                      fontFamily: "Gilroy",
                                      fontSize: 14.0,
                                      wordSpacing: 1,
                                      height: 1.2,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top:2.0,bottom: 2.0,right: 8.0,left: 8.0),
                                  child: Divider(
                                    height: 2,
                                    color: Colors.grey,
                                  ),
                                )
                              ]),
                        ),
                    ),
                     ),
                  
                  // RaisedButton(
                  //   color: Colors.black,
                  //   child: Text('more'),
                  //   onPressed: () {
                  //     Navigator.push(context,
                  //         MaterialPageRoute(builder: (context) => MorePage()));
                  //   },
                  // )
                ],
              )),
        ));
  }
}
