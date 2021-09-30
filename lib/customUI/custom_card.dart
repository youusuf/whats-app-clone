import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:const CircleAvatar(
        radius: 25,
      ),
      title:const Text("mothercode",
        style: TextStyle(
        fontWeight: FontWeight.w700
      ),
      ),
      trailing: const Text("12:30"),
      subtitle: Row(
        children:const [
          Icon(Icons.done_all),
          SizedBox(width: 5.0,),
          Text("Hi dev stack")

        ],
      )
    );
  }
}