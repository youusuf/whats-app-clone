import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whats_app_clone/model/chat_model.dart';


class ContactCard extends StatelessWidget {
   ContactCard({Key? key,this.contact}) : super(key: key);
  ChatModel? contact;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){},
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          child:SvgPicture.asset(
            'assets/person.svg',
            color: Colors.white,
            ),
          backgroundColor: Colors.blueGrey[200],
        ),
        title: Text(contact!.name!,style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600
        ),),
        subtitle: Text(contact!.status!),
      ),
    );
  }
}