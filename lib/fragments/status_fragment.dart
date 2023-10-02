import 'package:flutter/material.dart';

class StatusFragment extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Column(
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(1.3),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                         child: Image.asset('assets/images/tv_.webp',width: 60,height: 60,fit: BoxFit.cover,)
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 1.5),
                        borderRadius: BorderRadius.circular(40)
                      ),

                    ),
                    Padding(padding: EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("My Status",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("Today, 06:14 am",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black54),)
                      ],
                    ),),
                    Spacer(),
                    Container(
                      child: Icon(Icons.more_vert,color: Color(0xFF075E55),),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text("Recent Updates",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.6)),),
            ),
            for(int i=1; i<3; i++)
            InkWell(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(1.3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.green,width: 1.5)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset('assets/images/mah$i.jpg',width: 55,height: 55,fit: BoxFit.cover,),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Munna Ahmed",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                        SizedBox(height: 5,),
                        Text("Today, 0${i+1}:0$i pm",style: TextStyle(fontSize: 11,color: Colors.black54,fontWeight: FontWeight.w500),)
                      ],
                    ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 15,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text("Last Updates",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.6)),),
            ),
            for(int i=1; i<5; i++)
              InkWell(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(1.3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.green,width: 1.5)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset('assets/images/mah${i+2}.jpg',width: 55,height: 55,fit: BoxFit.cover,),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Munna Ahmed",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                            SizedBox(height: 5,),
                            Text("Yesterday, 0${i+3}:0${i+1} pm",style: TextStyle(fontSize: 11,color: Colors.black54,fontWeight: FontWeight.w500),)
                          ],
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