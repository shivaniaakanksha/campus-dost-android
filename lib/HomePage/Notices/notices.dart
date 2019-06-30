import 'package:http/http.dart' as http;
import 'dart:convert' show json;
import 'package:flutter/material.dart';
import 'dart:async';

class NoticesPage extends StatefulWidget {
  @override
  _NoticesPageState createState() => _NoticesPageState();
}

class _NoticesPageState extends State<NoticesPage> {
  // final String url = "https://swapi.co/api/people";
  // List data;

  // @override
  // void initState() {
  //   super.initState();
  //   this.getJsonData();
  // }

  // Future<String> getJsonData() async {
  //   var response = await http.get(
  //       //Encode the url
  //       Uri.encodeFull(url),
  //       headers: {"Accept": "application/json"});
  //   print(response.body);

  //   setState(() {
  //     var convertDataToJson = json.decode(response.body);

  //     data = convertDataToJson['results'];
  //   });
  //   return 'Success';
  // }

  Widget build(BuildContext context) {
    return new Scaffold(
      
      // body: new ListView.builder(
      //   itemCount: data == null ? 0 : data.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return new Container(
      //       child: Center(
      //         child: new Column(
      //           crossAxisAlignment: CrossAxisAlignment.stretch,
      //           children: <Widget>[
      //             new Card(
      //               child: new Container(
      //                 child: new Text(data[index]['name']),
      //                 padding: const EdgeInsets.all(20.0),
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //     );
      //   },
      // ),


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
                  "College Feed",
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
                    color: Colors.white,
                      elevation: 8.0,
                      margin: EdgeInsets.all(8.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                     
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 28.0,right: 28.0,top:8.0,bottom: 12.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        new Text(
                                          "Attention Feed ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            letterSpacing: 0.5,
                                            fontFamily: "Gilroy",
                                            fontSize: 22.0,
                                            wordSpacing: 1,
                                            height: 1.5,
                                            color: Colors.black,
                                          ),
                                        ),
                                         new Text(
                                          "We are happy to present our first success story. DSC helped a lot of young students to identify their skills, and led them to learn development technologies in early stage of college. ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontFamily: "Gilroy",
                                            fontSize: 16.0,
                                            height: 1.0,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ],
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
