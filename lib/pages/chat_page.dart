import 'package:flutter/material.dart';
import 'package:whats_app_clone/customUI/custom_card.dart';


class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.green.withOpacity(0.8),
      child: const Icon(Icons.message),
      onPressed:(){},
    ),
    body:ListView(
         children: [
            CustomCard(),
            CustomCard(),
         ],

    ),
    );
  }
}