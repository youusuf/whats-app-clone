import 'package:flutter/material.dart';
import 'package:whats_app_clone/customUI/button_card.dart';
import 'package:whats_app_clone/customUI/contact_card.dart';
import 'package:whats_app_clone/model/chat_model.dart';
import 'package:whats_app_clone/screen/create_group.dart';


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
          children: const[
            Text("Select Contact"),
            Text("20 contacts")
          ],
        ),
        actions: [
          const Icon(Icons.search),
           PopupMenuButton(
               itemBuilder:(context){
                 return [
                        PopupMenuItem(
                          onTap:(){},
                          child:const Text("Invite a friend"),
                          value: "Invite a friend",
                          ),
                           PopupMenuItem(
                          onTap:(){},
                          child:const Text("Contacts"),
                          value: "Contacts",
                          ),
                           PopupMenuItem(
                          onTap:(){},
                          child:const Text("Refresh"),
                          value: "Refresh",
                          ),
                           PopupMenuItem(
                          onTap:(){},
                          child:const Text("Help"),
                          value: "Help",
                          ),
                          
                 ];
               },
             )
        ],
      ),
      body:ListView.builder(
        itemCount: contact.length+2,
        itemBuilder:(context,index){
          if(index ==0){
            return InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateGroup()));
              },
              child: ButtonCard(name: "New Group",icon: Icons.group)
              );
          }
           if(index ==1){
            return ButtonCard(name: "new Contact",icon: Icons.group);
          }
          
        return ContactCard(contact: contact[index-2],);
      })
    );
  }
}