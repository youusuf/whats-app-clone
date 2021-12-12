import 'package:flutter/material.dart';



class ButtonCard extends StatelessWidget {
   ButtonCard({Key? key,this.name,this.icon}) : super(key: key);
    String? name;
    IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          child:Icon(
           icon,
           color: Colors.white,
          ),
          backgroundColor: Colors.green,
        ),
        title: Text(name!,style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600
        ),),
        
      ),
    );
  }
}