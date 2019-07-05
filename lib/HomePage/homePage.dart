//import 'package:campus_dost/HomePage/Contacts/contactDetails.dart';
//import 'package:campus_dost/HomePage/Contacts/contactsList.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


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

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<BottomNavigationBarProvider>(
    child: BottomNavigationBarExample(),
    builder: (BuildContext context) => BottomNavigationBarProvider(),
    );
  }
}



class BottomNavigationBarExample extends StatefulWidget {
  @override
  _BottomNavigationBarExampleState createState() =>
      _BottomNavigationBarExampleState();
}


class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample> {
  var currentTab = [
    ContactsPage(),
    NoticesPage(),
    MorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    return Scaffold(
      body: currentTab[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
        icon: new Icon(Icons.contacts,size: 24,),
        title: new Text('Contacts'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.notification_important,size: 24,),
            title: new Text('Notices'),
          ),
          BottomNavigationBarItem(
            icon:new Icon(Icons.more_horiz,size: 24,),
            title: Text('More'),
          )
        ],
        selectedItemColor: Colors.white,
        backgroundColor: Color(0xff4285f4),
        unselectedItemColor: Colors.white30,
        selectedFontSize: 12.0,
        unselectedFontSize: 10.0,
      ),
    );
  }
}


class BottomNavigationBarProvider with ChangeNotifier {
  int _currentIndex = 1;

  get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}



