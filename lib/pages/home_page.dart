import 'package:flutter/material.dart';
import 'package:whatsapp_ui_design_list_four/fragments/chats_fragment.dart';

import '../fragments/calls_fragment.dart';
import '../fragments/status_fragment.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return  DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
         appBar: PreferredSize(child: AppBar(
           elevation: 0,
           title: Padding(
             padding: EdgeInsets.only(top: 10),
             child: Text("WhatsApp",style: TextStyle(fontSize: 21),),
           ),
           actions: [
             Padding(padding: EdgeInsets.only(top: 10,right: 15),
             child: Icon(Icons.search,color: Colors.white,size: 24,),),
             PopupMenuButton(
               onSelected: (selected){
                 if(selected==5){
                   Navigator.pushNamed(context, "settingsPage");
                 }
               },
               elevation: 10,
                 padding: EdgeInsets.symmetric(vertical: 19),
                 iconSize: 28,
                 itemBuilder: (context)=>[
                   PopupMenuItem(value: 1,child: Text("New group",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Color.fromARGB(162, 0, 0, 0)),)),
                   PopupMenuItem(value: 2,child: Text("New broadcast",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Color.fromARGB(162, 0, 0, 0)),)),
                   PopupMenuItem(value: 3,child: Text("Linked devices",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Color.fromARGB(162, 0, 0, 0)),)),
                   PopupMenuItem(value: 4,child: Text("Starred messages",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Color.fromARGB(162, 0, 0, 0)),)),
                   PopupMenuItem(value: 5,child: Text("Settings",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Color.fromARGB(162, 0, 0, 0)),))
                 ])
           ],
         ), preferredSize: Size.fromHeight(70)),
          body: Column(
            children: [
              Container(
                color: Color(0xFF075E55),
                child: TabBar(
                  indicatorWeight: 4,
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                  tabs: [
                    Container(
                      width: 25,
                      child: Tab(
                        icon: Icon(Icons.camera_alt),
                      ),
                    ),
                    Container(
                      width: 70,
                      child: Tab(
                        child: Row(
                          children: [
                            Text('Chats'),
                            SizedBox(width: 5,),
                            Container(
                              alignment: Alignment.center,
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Text('10',style: TextStyle(fontSize: 12,color: Color(0xFF075E55)),),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(width: 70,child: Tab(
                      child: Text('Status'),
                    ),),
                    Container(width: 70,child: Tab(
                      child: Text('Calls'),
                    ),)
                  ],
                ),
              ),
              Flexible(flex: 1, child: TabBarView(children: [
                Container(
                  color: Colors.black,
                ),
                ChatsFragment(),
                StatusFragment(),
                CallsFragment(),
              ]))
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: Color(0xFF075E55),
            child: Icon(Icons.message),
          ),
        )

    );
  }
}