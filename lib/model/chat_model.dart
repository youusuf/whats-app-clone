import 'package:flutter/cupertino.dart';

class ChatModel{

  String? name;
  String? icon;
  bool? isGroup;
  String? time;
  String? status;
  String? currentMessage;
  ChatModel(
  {this.name,
  this.icon,
  this.isGroup,
  this.time,
  this.status,
  this.currentMessage});


}