import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whats_app_clone/model/chat_model.dart';

class AvatarCard extends StatelessWidget {
  const AvatarCard({Key? key,this.chatModel}) : super(key: key);
  final ChatModel? chatModel;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
             CircleAvatar(
            radius: 24,
            child:SvgPicture.asset(
              'assets/person.svg',
              color: Colors.white,
              ),
            backgroundColor: Colors.blueGrey[200],
          ),
        const Positioned(
          bottom: 4,
          right: 5,
            child: CircleAvatar(
              backgroundColor: Colors.grey,
            radius: 12,
            child:Icon(
              Icons.clear,
              color:Colors.white
              ),

          ),
        )
          ],
        ),
        Text(chatModel!.name!),


      ],
    );
  }
}