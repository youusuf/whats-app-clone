import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whats_app_clone/model/chat_model.dart';
import 'package:whats_app_clone/screen/indivisual_screen.dart';
class CustomCard extends StatelessWidget {
    ChatModel chatModel;
    CustomCard(this.chatModel);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>IndivisualScreen(
          chatModel2: chatModel,
        )));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(.7),
              radius: 25,
              child: SvgPicture.asset(
              chatModel.isGroup!?"assets/groups.svg":"assets/person.svg",
                color: Colors.white,
                ),
            ),
            title:Text(
              chatModel.name!,
              style: TextStyle(
              fontWeight: FontWeight.w700
            ),
            ),
            trailing: Text(chatModel.time!),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(width: 5.0,),
                Text(
                  chatModel.currentMessage!,
                  )
    
              ],
            )
          ),
            Padding(
              padding:const EdgeInsets.only(left: 80.0,right: 10.0),
              child: Divider(
                thickness: 1,
              ),
            )
    
        ],
      ),
    );
  }
}