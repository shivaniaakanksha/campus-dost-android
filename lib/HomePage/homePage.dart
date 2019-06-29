import 'package:flutter/material.dart';

import 'package:campus_dost/HomePage/Contacts/contacts.dart';
import 'package:campus_dost/HomePage/More/more.dart';
import 'package:campus_dost/HomePage/Notices/notices.dart';



class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{

  Widget customBottomNavigationBar(BuildContext context){
  double myHeight =50.0;//Your height HERE
  return SizedBox(
    height: myHeight,
    width: MediaQuery.of(context).size.width,
    child:TabBar(
      tabs: [
        Tab(
          text: "Contacts",
          icon: new Icon(Icons.contacts,size: 24,), ),
        Tab( text: "Notices",
          icon: new Icon(Icons.notification_important,size: 24,),
         ),
        Tab( text: "More",
            icon:new Icon(Icons.more_horiz,size: 24,) ),
      ],
      labelStyle: TextStyle(fontSize: 10.0,),
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white30,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Colors.white,
    ),
  );
}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
            children: <Widget>[
              new ContactsPage(),
          new NoticesPage(),
          new MorePage(),
          ],
          ),
          bottomNavigationBar: customBottomNavigationBar(context),
          backgroundColor: Color(0xff4285f4),
        ),
      ),
    );
  }
}