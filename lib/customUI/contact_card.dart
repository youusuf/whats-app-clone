import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whats_app_clone/model/chat_model.dart';


class ContactCard extends StatelessWidget {
   ContactCard({Key? key,this.contact}) : super(key: key);
  ChatModel? contact;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 53,
        width: 50,
        child: Stack(
          children: [
             CircleAvatar(
            radius: 25,
            child:SvgPicture.asset(
              'assets/person.svg',
              color: Colors.white,
              ),
            backgroundColor: Colors.blueGrey[200],
          ),
        contact!.select? const Positioned(
          bottom: 4,
          right: 5,
            child: CircleAvatar(
            radius: 12,
            child:Icon(Icons.check),

          ),
        ):Container()
          ],
        ),
      ),
      title: Text(contact!.name!,style:const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600
      ),),
      subtitle: Text(contact!.status!),
    );
  }
}