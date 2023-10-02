import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        //leadingWidth: 5,
        title: Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text("Settings"),
        )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Column(
            children: [
              InkWell(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset('assets/images/mah3.jpg',width: 55,height: 55,fit: BoxFit.cover,),
                      ),
                      Padding(padding: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Mahmud Islam",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("Hey there, I am using whatsapp",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black54),)
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        child: Icon(CupertinoIcons.qrcode,color: Color(0xFF0FCE5E),),
                      )
                    ],
                  ),

                ),
              ),
              Divider(),
              InkWell(
                onTap: (){},
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Icon(Icons.key),
                  ),
                  title: Text("Account",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  subtitle: Text("Security notifications,change number"),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Icon(Icons.message),
                  ),
                  title: Text("Chats",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  subtitle: Text("Theme, wallpapers, chat history"),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Icon(Icons.notifications),
                  ),
                  title: Text("Notifications",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  subtitle: Text("Message,group & call tone"),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Icon(Icons.circle_outlined),
                  ),
                  title: Text("Storage and data",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  subtitle: Text("Network usage, auto-download"),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Icon(Icons.help_outline_outlined),
                  ),
                  title: Text("Help",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  subtitle: Text("Help centre, contact us, privacy policy"),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  leading: Icon(Icons.people_alt),

                  title: Text("Invite a friend",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                ),
              ),
              
              Padding(padding: EdgeInsets.symmetric(vertical: 42),
                child: Column(
                  children: [
                    Text("from",style: TextStyle(fontSize: 14,color: Colors.black54),),
                    Text("Meta",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Color(0xFF0FCE5E)),)
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}