
import 'package:campus_dost/HomePage/Contacts/contacts.dart';
import 'package:campus_dost/HomePage/More/more.dart';
import 'package:campus_dost/HomePage/Notices/notices.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController _tabController;

  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: new TabBarView(
         children: <Widget>[
           new ContactsPage(),
           new NoticesPage(),
           new MorePage(),
         ],
         controller: _tabController,
       ),
       bottomNavigationBar: new Material(
         color: const Color(0xff4285f4),
         child: new TabBar(
           controller: _tabController,
           tabs: <Widget>[
             new Tab(
               text: "Contacts",
               icon: new Icon(Icons.contacts,size: 32,),
               
             ),
              new Tab(
                text: "Notices",
                icon: new Icon(Icons.notification_important,size: 32,),
              ),
              new Tab(
                text: "More",
                icon:new Icon(Icons.more_horiz,size: 32,)
                ),
           ],
         ),
       ),
    );
  }
}