import 'package:flutter/material.dart';
import 'package:whatsapp_ui_design_list_four/pages/chats_page.dart';
import 'package:whatsapp_ui_design_list_four/pages/home_page.dart';
import 'package:whatsapp_ui_design_list_four/pages/settings_page.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Color(0xFF075E55)
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0)
        )
      ),
      routes: {
        "/":(context)=>HomePage(),
        "settingsPage":(context)=>SettingsPage(),
        "chatPage":(context)=>ChatsPage(),
      },
    );
  }
}