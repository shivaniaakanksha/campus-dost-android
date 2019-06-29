import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  List<String> _products = [
    'Departments',
    'Hostels',
    'Important Functionaries',
    'Student Clubs'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top:40.0),
          child: new Text(
            "Campus Dost",
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


        //Container for buttons
        // Container(
        //   width: double.infinity,
        //   child: new Column(
        //     chilZZ
        //   ),
        // )


        // Container for ListView
        Padding(
         padding:
              const EdgeInsets.only(top: 4.0, bottom: 4.0, left: 8.0, right: 8.0),
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _products.map((element) => ContactItem(element)).toList(),
            
            ),
          ),
        )
      ],
    ));
  }
}

//for listView
class ContactItem extends StatelessWidget {
  final String text;
  ContactItem(this.text);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(text[0] == ("D")){
          //  Navigator.push(context, 
      // MaterialPageRoute(
        // builder: (context) => ()
      // ),
      // );
        }else if(text[0] == "H"){
          print("h");
        }else if(text[0] == "I"){
          print("i");
        }else if(text[0] == "S"){
          print("s");
        }
      },
    
          child: Container(
        width: double.infinity,
       
          margin: const EdgeInsets.only(top:4.0,bottom: 4.0),
          child: new Card(
            color: Color(0xff4285f4),
            elevation: 10.0,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0)),
            
            child: Padding(
              padding: const EdgeInsets.only(top: 28.0, bottom: 28.0, left: 40.0),
              child: new Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  letterSpacing: 0.8,
                  fontFamily: "Gilroy",
                  fontSize: 24.0,
                  wordSpacing: 5,
                ),
              ),
            ),
          ),
        ),
      
    );
  }
}
