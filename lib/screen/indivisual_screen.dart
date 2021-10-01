import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whats_app_clone/model/chat_model.dart';

class IndivisualScreen extends StatefulWidget {
  IndivisualScreen({Key? key,required this.chatModel2}) : super(key: key);
  ChatModel chatModel2;

  @override
  _IndivisualScreenState createState() => _IndivisualScreenState();
}

class _IndivisualScreenState extends State<IndivisualScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        leading: InkWell(
          onTap:(){
            Navigator.pop(context);
          },
          child: Row(
            children:[
              SizedBox(width: 3,),
              const Icon(
                Icons.arrow_back
                ),
                SizedBox(width: 2,),
               
              CircleAvatar(
               //  backgroundColor: Colors.grey.withOpacity(.7),
                radius: 20,
                child: SvgPicture.asset(
                widget.chatModel2.isGroup!?"assets/groups.svg":"assets/person.svg",
                  color: Colors.white,
                  height: 36,
                  width: 36,
                  ),
              )
            ]
          ),
          
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
            widget.chatModel2.name!
          ),
          Text("active 2 mins ago",style: TextStyle(
            fontSize: 15,
            color: Colors.white.withOpacity(.8)
          ),)
        ],),
        actions: [
          IconButton(
            onPressed:(){},
            icon: Icon(Icons.videocam),
            
            ),
             IconButton(
            onPressed:(){},
            icon: Icon(Icons.call),
             ),
             PopupMenuButton(
               itemBuilder:(context){
                 return [
                        PopupMenuItem(
                          onTap:(){},
                          child:Text("View Contact"),
                          ),
                           PopupMenuItem(
                          onTap:(){},
                          child:Text("Media, links, and docs"),
                          ),
                           PopupMenuItem(
                          onTap:(){},
                          child:Text("Search"),
                          ),
                           PopupMenuItem(
                          onTap:(){},
                          child:Text("More notification"),
                          ),
                           PopupMenuItem(
                          onTap:(){},
                          child:Text("Wallpapers"),
                          ),
                           PopupMenuItem(
                          onTap:(){},
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text("More"),
                            Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.black,
                            )
                          ],),
                          ),
                 ];
               },
             )
        ],

      ),
      body:Container(),
    );
  }
}