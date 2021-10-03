import 'package:flutter/material.dart';
import 'package:whats_app_clone/customUI/custom_card.dart';
import 'package:whats_app_clone/model/chat_model.dart';
import 'package:whats_app_clone/screen/select_contact.dart';


class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Masud",
      icon: "person.svg",
      isGroup: false,
      time:"12.30",
      currentMessage: "Ki Koros?"     
      ),
      ChatModel(
      name: "Masud",
      icon: "person.svg",
      isGroup: false,
      time:"12.30",
      currentMessage: "Ki Koros?"     
      ),
      ChatModel(
      name: "Buddies",
      icon: "person.svg",
      isGroup: true,
      time:"12.30",
      currentMessage: "Ki Koros?"     
      ),
      ChatModel(
      name: "Masud",
      icon: "person.svg",
      isGroup: false,
      time:"12.30",
      currentMessage: "Ki Koros?"     
      ),
      ChatModel(
      name: "Masud",
      icon: "person.svg",
      isGroup: false,
      time:"12.30",
      currentMessage: "Ki Koros?"     
      )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.green.withOpacity(0.8),
      child: const Icon(Icons.message),
      onPressed:(){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectContact()));
      },
    ),
    body:ListView.builder(
      itemCount: chats.length,
      itemBuilder:(context,index){
            return  CustomCard(
              chats[index]
            );
      },
    ),
    );
  }
}