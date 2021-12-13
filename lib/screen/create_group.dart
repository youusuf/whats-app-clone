import 'package:flutter/material.dart';
import 'package:whats_app_clone/customUI/avatar_card.dart';
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
      body:Stack(
        children: [
          ListView.builder( 
          itemCount: contact.length+1,
          itemBuilder:(context,index){  
              if(index==0){
                return Container(
                  height: group.length > 0? 90:10,
                );

             } 


          return InkWell(
            onTap:(){
              if(contact[index-1].select==false){
                setState(() {
                  contact[index-1].select = true;
                  group.add(contact[index-1]);
                });
              }
              else{
                setState(() {
                  contact[index-1].select = false;
                  group.remove(contact[index-1]);
                });
              }
            },
            child: ContactCard(contact: contact[index-1],)
            );
        }),
       group.length>0? Column(
          children: [
            Container(
              height: 85.0,
              color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: contact.length,
                itemBuilder:(context,index){
                  if(contact[index].select==true){
                    return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap:(){
                        setState(() {
                          group.remove(contact[index]);
                          contact[index].select = false;
                        });
                      },
                      child: AvatarCard(
                        chatModel: contact[index],
                        ),
                    ),
                    );
                  }
                  else{
                    return Container();
                  }
                  
                },
              ),

            )
          ],
        ):Container()
        ],
      )
    );
  }
}