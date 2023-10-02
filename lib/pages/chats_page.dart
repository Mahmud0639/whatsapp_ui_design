import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/chat_bottom_bar.dart';
import '../items/chats_items.dart';

class ChatsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: AppBar(
            elevation: 0,
            leading: Padding(
              padding: EdgeInsets.only(top: 10,left: 10),
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back,),
              ),
            ),
            leadingWidth: 22,
            title: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset('assets/images/mah1.jpg',width: 40,height:40,fit: BoxFit.cover,),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mahmud Islam",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),),
                      SizedBox(height: 5,),
                      Text("online",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,color: Colors.white.withOpacity(0.9)),)
                    ],
                  ),
                  )
                ],
              ),
            ),
            actions: [
              Padding(padding: EdgeInsets.only(top: 10,right: 25),
                child: Icon(CupertinoIcons.video_camera_solid,size: 30,),
              ),
              Padding(padding: EdgeInsets.only(top: 10,right: 25),
              child: Icon(Icons.call,size: 25,),),
              Padding(padding: EdgeInsets.only(top: 10,right: 10),
              child: Icon(Icons.more_vert,size: 25,),)
            ],
          ),
        ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/whatsapp_bg.jpg")
          )
        ),
        child: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.only(top: 10,left: 8,right: 8,bottom: 70),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFF3C2),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 3,
                      blurRadius: 5
                    )
                  ]
                ),
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 20),
                width: 300,padding: EdgeInsets.all(8),
                child: Text("Messages and calls are end-to-end encrypted.No one outside or even whatsapp can read or listen.Tap to learn more.",textAlign: TextAlign.center,),),
              ChatsItems(),
              ChatsItems(),
              ChatsItems(),
              ChatsItems(),
              ChatsItems(),
            ],
          ),
          ),
        ),
      ),
      bottomSheet: ChatBottomBar(),
    );
  }
}