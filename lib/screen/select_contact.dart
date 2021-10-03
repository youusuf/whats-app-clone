import 'package:flutter/material.dart';
import 'package:whats_app_clone/customUI/button_card.dart';
import 'package:whats_app_clone/customUI/contact_card.dart';
import 'package:whats_app_clone/model/chat_model.dart';


class SelectContact extends StatelessWidget {
  const SelectContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Select Contact"),
            Text("20 contacts")
          ],
        ),
        actions: [
          Icon(Icons.search),
           PopupMenuButton(
               itemBuilder:(context){
                 return [
                        PopupMenuItem(
                          onTap:(){},
                          child:Text("Invite a friend"),
                          value: "Invite a friend",
                          ),
                           PopupMenuItem(
                          onTap:(){},
                          child:Text("Contacts"),
                          value: "Contacts",
                          ),
                           PopupMenuItem(
                          onTap:(){},
                          child:Text("Refresh"),
                          value: "Refresh",
                          ),
                           PopupMenuItem(
                          onTap:(){},
                          child:Text("Help"),
                          value: "Help",
                          ),
                          
                 ];
               },
             )
        ],
      ),
      body:ListView.builder(
        itemCount: contact.length,
        itemBuilder:(context,index){
          if(index ==0){
            return ButtonCard(name: "New Group",icon: Icons.group);
          }
           if(index ==1){
            return ButtonCard(name: "new Contact",icon: Icons.group);
          }
          
        return ContactCard(contact: contact[index],);
      })
    );
  }
}