import 'package:flutter/material.dart';
import 'package:whatsap_clone/pages/ChatScreen.dart';
import 'package:whatsap_clone/pages/calls_screen.dart';
import 'package:whatsap_clone/pages/camera_screen.dart';
import 'package:whatsap_clone/pages/status_screen.dart';

class WhatsAppClone extends StatefulWidget {
  const WhatsAppClone({super.key});

  @override
  State<WhatsAppClone> createState() => _WhatsAppCloneState();
}

class _WhatsAppCloneState extends State<WhatsAppClone>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          )
        ],
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
            Tab(
              child: Text(
                "Chats",
                style: TextStyle(color: Colors.white),
              ),
              // text: "Status",
            ),
            Tab(
              child: Text(
                "Groups",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              child: Text(
                "Status",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: const [
        Camera_Screen(),
        ChatScreen(),
        Status_Screen(),
        Call_Screen()
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff25D366),
        child: Icon(Icons.message),
        onPressed: () {},
      ),
    );
  }
}
