import 'dart:ui';

import 'package:emoji_picker/emoji_picker.dart';
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
  var emokeyboard = false;
  FocusNode focusNode = FocusNode();
  TextEditingController textEditingController = TextEditingController();
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode.addListener(() {
      if(focusNode.hasFocus){
        setState(() {
          emokeyboard = false;
        });
      }
    });
  }
  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
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
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WillPopScope(
          onWillPop:()  {
            if(emokeyboard){
              setState(() {
                emokeyboard = false;
              });
              
            }
            else{
              Navigator.pop(context);
            }
            return Future.value(false);
          },
          child: Stack(children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
              
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                  //  mainAxisSize:MainAxisSize.min,
                    children: [
                    Container(
                      width: MediaQuery.of(context).size.width-55,
                      child: Card(          
                        margin: EdgeInsets.only(left: 8.0,right: 8.0,bottom: 5.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)
                        ),
                        child:  TextFormField(
                          controller: textEditingController,
                          focusNode: focusNode,
                          textAlignVertical: TextAlignVertical.center,
                          maxLines: 5,
                          minLines: 1,
                          keyboardType: TextInputType.multiline,
                          
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your message",
                            prefixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  focusNode.unfocus();
                                  focusNode.canRequestFocus = false;
                                  emokeyboard = !emokeyboard;
                                });
        
                              },
                              icon:Icon(Icons.emoji_emotions,color: Colors.green,),        
                            ),
                            suffixIcon:Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                              IconButton(
                                icon: Icon(Icons.attach_file,color: Colors.green,),
                                onPressed:(){
                                  showModalBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                   builder:(builder)=>bottomSheet());
                                },
                               
                               ),
                               IconButton(onPressed:(){},
                                icon: Icon(Icons.camera_alt,
                                color: Colors.green,
                                )
                                )
                            ],)
                          ),
        
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: 25.0,
                        child: Icon(Icons.mic)
                      ),
                    ),
        
                  ],
                  
                  ),
                  emokeyboard?emoji():Container()
                ],
              ),
            )
          ],),
          
        ),
      ),
    );
  }
  Widget bottomSheet(){
    return Container(
      height: 250,
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.all(15.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  iconcreation(Icons.insert_drive_file, "Documents", Colors.blueAccent),
                  SizedBox(width: 40.0,),
                  iconcreation(Icons.camera_alt, "Camera", Colors.pink),
                  SizedBox(width: 40.0,),
                  iconcreation(Icons.insert_photo, "Gallery", Colors.purple),
                  SizedBox(width: 30.0,)
                  
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  iconcreation(Icons.headset, "Audio", Colors.blueAccent),
                  SizedBox(width: 40.0,),
                  iconcreation(Icons.location_pin, "Location", Colors.pink),
                  SizedBox(width: 40.0,),
                  iconcreation(Icons.person, "Contact", Colors.purple),
                  SizedBox(width: 30.0,)
                  
                ],

              )
            ],
          ),
        ),
      ),
    );

  }
Widget iconcreation(IconData icon,String text,Color color){
  return InkWell(
    onTap:(){},
    child: Column(
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 26.0,
          child: Icon(icon),
        ),
        SizedBox(height: 5),
        Text(text,style: TextStyle(
          fontSize: 15
        ),)
      ],
    ),
  );
}


  Widget emoji(){
    return EmojiPicker(
      rows: 3,
      columns: 7,
     
      onEmojiSelected: (emoji, category) {
        print(emoji);
        setState(() {
          textEditingController.text = textEditingController.text+emoji.emoji;
        });
        
      },
    );
    
  }
}