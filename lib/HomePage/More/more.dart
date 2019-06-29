import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';

class MorePage extends StatefulWidget {
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  void _launchURL(BuildContext context, String value) async {
    final url = value;
    try {
      await launch(
        url,
        option: CustomTabsOption(
          toolbarColor: Theme.of(context).primaryColor,
          enableDefaultShare: true,
          enableUrlBarHiding: true,
          showPageTitle: true,
          // animation: CustomTabsAnimation.slideIn()
          // or user defined animation.
          animation: const CustomTabsAnimation(
            startEnter: 'slide_up',
            startExit: 'android:anim/fade_out',
            endEnter: 'android:anim/fade_in',
            endExit: 'slide_down',
          ),
          extraCustomTabs: const <String>[
            // ref. https://play.google.com/store/apps/details?id=org.mozilla.firefox
            'org.mozilla.firefox',
            // ref. https://play.google.com/store/apps/details?id=com.microsoft.emmx
            'com.microsoft.emmx',
          ],
        ),
      );
    } catch (e) {
      // An exception is thrown if browser app is not installed on Android device.
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Container(
        width: double.infinity,
        height: double.infinity,
        decoration: new BoxDecoration(color: Colors.white),
        child: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 20.0),
                child: new Text(
                  "Developers",
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

              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/dsc_logo.png',
                    fit: BoxFit.scaleDown,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
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
                    ),
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(
                    top: 32.0, left: 32.0, right: 32.0, bottom: 8.0),
                child: new Text(
                  "A Developer Student Clubs is a Google recognised student body at a college which directly reports to Google for their activities and is supported by the tech giant." +
                      '\n' +
                      '\n' +
                      "A DSC conducts workshops, seminars and other fun activities which help the students connect with Google.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      fontFamily: "Gilroy",
                      fontSize: 20.0,
                      wordSpacing: 1,
                      height: 1.3),
                ),
              ),

//Links
              Padding(
                padding: const EdgeInsets.only(left: 60.0, right: 60.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: GestureDetector(
                            onTap: () =>
                                _launchURL(context, 'https://dsckiet.tech/'),
                            child: Image.asset(
                              'assets/link_icon.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: GestureDetector(
                            onTap: () => _launchURL(
                                context, 'https://github.com/dsckiet/'),
                            child: Image.asset(
                              'assets/github_icon.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                    Expanded(
                      flex: 1,
                      child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: GestureDetector(
                            onTap: () => _launchURL(
                                context, 'https://www.instagram.com/dsckiet/'),
                            child: Image.asset(
                              'assets/instagram_icon.png',
                              fit: BoxFit.cover,
                            ),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}