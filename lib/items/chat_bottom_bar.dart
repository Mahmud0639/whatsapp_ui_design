import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 65,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            child: Row(
              children: [
                Icon(Icons.emoji_emotions_outlined,color: Colors.black38,size: 24,),
                SizedBox(width: 10,),
                Container(width: 180,child: TextFormField(
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                    hintText: "Message",
                    border: InputBorder.none
                  ),
                ),
                ),
                Icon(Icons.attach_file_outlined,size: 24,color: Colors.black38,),
                SizedBox(width: 10,),
                Icon(Icons.camera_alt,size: 24,color: Colors.black38,)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF00887A),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Icon(Icons.mic,color: Colors.white,size: 25,),
          )
        ],
      ),
    );
  }
}