import 'package:flutter/material.dart';

class ChatsFragment extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        child: Column(
          children: [
          for(int i=1; i<11; i++)
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "chatPage");
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(//ClipRect is used to ensure that the image loaded from 'assets/images/mahmud.jpg' is displayed within a 55x55 pixel bounding box. If the image is larger than these dimensions, it will be clipped to fit, maintaining a consistent size for the image.
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset('assets/images/mah$i.jpg',width: 55,height: 55,fit: BoxFit.cover,),
                    ),
                    Padding(padding: EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mahmud Islam",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("Tomar exam ki ses? Abar kobe ache??",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black54,overflow: TextOverflow.ellipsis,),maxLines: 1,)
                      ],
                    ),
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("12:0${i+1} PM",style: TextStyle(fontSize: 12,color: Color(0xFF0FCE5E),fontWeight: FontWeight.w500),),
                        SizedBox(height: 5,),
                        Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Color(0xFF0FCE5E),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Text("$i",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500,color: Colors.white),),
                        )
                      ],
                    )

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}