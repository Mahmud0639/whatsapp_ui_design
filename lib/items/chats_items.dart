import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatsItems extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Column(
      children: [
          Padding(padding: EdgeInsets.only(right: 80),
            child: Container(
              alignment: Alignment.centerLeft,
              child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.receive),
                child: Container(
                  padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,

                  ),
                  child: Text("Hi, Mahmud, how are you?",style: TextStyle(fontSize: 15),),
                ),
              ),
            ),

          ),
         Container(
           alignment: Alignment.centerRight,
          margin: EdgeInsets.only(top: 20,left: 80,bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 20),
              decoration: BoxDecoration(
                color: Color(0xFFE4FDCA),

              ),
              child: Text("Hi, I am fine and you? I hope you are well by the grace of Almighty Allah. Again thanks for asking about me.",style: TextStyle(fontSize: 15),),
            ),
          ),
        ),
      ],
    );
  }
}