import 'package:flutter/material.dart';
import 'package:whatsapp/call_screen.dart';
import 'package:whatsapp/camera_screen.dart';
import 'package:whatsapp/chat_screen.dart';
import 'package:whatsapp/status_screen.dart';
class WhatsappHome extends StatefulWidget {
  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController=TabController(vsync: this,initialIndex: 1,length: 4);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whatsapp'),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.black54,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text:"Chats"),
            Tab(text: "Status"),
            Tab(text: "Calls",)
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
          children: <Widget>[
            CameraScreen(),
            ChatScreen(),
            StatusScreen(),
            CallsScreen(),

          ],
           ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
          child: Icon(Icons.message),
          onPressed:()=>print("open chats") ),
    );
  }
}
