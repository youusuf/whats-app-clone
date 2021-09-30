import 'package:flutter/material.dart';
import 'package:whats_app_clone/pages/chat_page.dart';
enum values {
  newGroup,
  newBoardcast,
  whatsAppweb,
  stareedMessages,
  settings 
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>with SingleTickerProviderStateMixin {
    TabController? _controller;
@override
void initState() {
  super.initState();
  _controller = TabController(length: 4, vsync: this,initialIndex: 1);
  
 
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("What's app"),
        actions: [
          IconButton(
            onPressed:(){},
           icon: const Icon(Icons.search)
           
           ),
           PopupMenuButton(
                itemBuilder:(context){
                  return const[
                    PopupMenuItem(
                      child: Text("New Group"),
                      value: values.newGroup,
                    ),
                     PopupMenuItem(
                      child: Text("New Boardcast"),
                      value: values.newBoardcast,
                    ),
                     PopupMenuItem(
                      child: Text("Whats App web"),
                      value: values.whatsAppweb,
                    ),
                    
                    PopupMenuItem(
                      child: Text("Stareed messages"),
                      value: values.stareedMessages,
                    ),
                    PopupMenuItem(
                      child: Text("Settings"),
                      value: values.settings,
                    ),
                  ];
                },
              )

        ],
        bottom:TabBar(
          indicatorColor: Colors.white,
          controller: _controller,
          tabs:const [
             Tab(
              icon:Icon(
                Icons.camera_alt,
              ),
            ),
             Tab(
              text: "CHATS",
              
            ),
             Tab(
              text: "STATUS",
            ),
             Tab(
              text: "CALLS",
            ),
          ],
        )
      ),
      body: TabBarView(
      
        controller: _controller,
        children: const[
        Text("Camera Screen"),
        ChatPage(),
        Text("Status"),
        Text("Cals")
      ],),
    );
  }
}