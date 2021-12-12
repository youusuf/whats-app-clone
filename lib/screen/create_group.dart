import 'package:flutter/material.dart';
import 'package:whats_app_clone/customUI/button_card.dart';
import 'package:whats_app_clone/customUI/contact_card.dart';
import 'package:whats_app_clone/model/chat_model.dart';



class CreateGroup extends StatefulWidget {
  const CreateGroup({Key? key}) : super(key: key);

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  List<ChatModel> contact = [
      ChatModel(
        status: "Foolish",
        name: "Yousuf"
      ),
      ChatModel(
        status: "Foolish",
        name: "Yousuf"
      ),
      ChatModel(
        status: "Foolish",
        name: "Yousuf"
      ),
      ChatModel(
        status: "Foolish",
        name: "Yousuf"
      ),
     
    ];

    List<ChatModel> group = [];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const [
            Text("New Group"),
            Text("Add Perticipents")
          ],
        ),
        actions:const [
          Icon(Icons.search),
           
        ],
      ),
      body:ListView.builder(
        itemCount: contact.length,
        itemBuilder:(context,index){  
        return InkWell(
          onTap:(){
            if(contact[index].select==false){
              setState(() {
                contact[index].select = true;
                group.add(contact[index]);
              });
            }
            else{
              setState(() {
                contact[index].select = false;
                group.remove(contact[index]);
              });
            }
          },
          child: ContactCard(contact: contact[index],));
      })
    );
  }
}