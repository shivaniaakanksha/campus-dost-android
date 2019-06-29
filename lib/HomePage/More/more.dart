import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MorePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    _launchURL_DSCWebPage( ) async {
      const url = 'https://dsckiet.tech/';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
    _launchURL_DSCgithub() async {
      const url = 'https://github.com/dsckiet';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    _launchURL_DSCinstagram() async {
      const url = 'https://www.instagram.com/dsckiet/';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    void _showDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("OOPs!"),
            content: new Text("Could not launch url"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Developers",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        fontFamily: "Gilroy",
                        fontSize: 30.0,
                        wordSpacing: 1,
                        height: 1.2,
                        color: Color(0xff4285f4)),
                  )),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/logo_dsc.png',
                      fit: BoxFit.cover,
                      scale: 1.5,
                    ),
                    Text(
                      "Developer Student Clubs",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.5,
                        fontFamily: "Gilroy",
                        fontSize: 23.0,
                        wordSpacing: 1,
                        height: 1.2,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "A Developer Student Clubs is a Google Recognised student body at a college which directly reports to Google for their activies and is supported by the tech giants. " +
                      '\n' +
                      '\n' +
                      "A DSC conducts workshops,seminars and other fun activities which help the students connect with Google.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0.5,
                    fontFamily: "Gilroy",
                    fontSize: 20.0,
                    wordSpacing: 1,
                    height: 1.2,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: GestureDetector(onTap: _launchURL_DSCWebPage,
                        child: Image.asset(
                          'assets/link_image.png',
                          fit: BoxFit.cover,
                        ),)
                      )),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: GestureDetector(onTap: _launchURL_DSCgithub,
                        child: Image.asset(
                          'assets/github_image.png',
                          fit: BoxFit.cover,
                        ),)
                      )),
                  Expanded(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: GestureDetector(onTap: _launchURL_DSCinstagram,
                        child: Image.asset(
                          'assets/instagram_image.png',
                          fit: BoxFit.cover,
                        )),)
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
