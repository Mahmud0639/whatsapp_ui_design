import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallsFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
        child: Column(
          children: [
            for(int i=1; i<5; i++)
              InkWell(
                onTap: (){},
                child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40)
                ),
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset('assets/images/mah$i.jpg',width: 55,height: 55,fit: BoxFit.cover,),
                      ),
                    Padding(padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mahmud Islam",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Icon(Icons.call_made,color: Color(0xFF075E55),),
                              SizedBox(width: 5,),
                              Text("(1) Today, 03:12 pm",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black54),)
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        child: Icon(Icons.call_sharp,color: Color(0xFF075E55),),
                      ),
                    )
                  ],
                ),
            ),
              ),

            for(int i=5; i<10; i++)


            InkWell(
              onTap: (){},
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40)
                ),
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/images/mah$i.jpg',width: 55,height: 55,fit: BoxFit.cover,),
                    ),
                    Padding(padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mahmud Islam",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Icon(Icons.call_received,color: Colors.red),
                              SizedBox(width: 5,),
                              Text("(1) Today, 03:12 pm",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black54),)
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        child: Icon(Icons.videocam,color: Color(0xFF075E55),),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}