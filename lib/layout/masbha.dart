import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class masbha extends StatefulWidget {



  @override
  State<masbha> createState() => _masbhaState();
}

class _masbhaState extends State<masbha> {
  int counter =0 ;
  int cycle =1 ;
  String word = 'سـبـحـان الـلـه' ;
  int cycle1 = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar:AppBar(backgroundColor: Colors.blueGrey,
        title: Center(
            child: Text('وذكـــــر' , style: TextStyle(fontWeight: FontWeight.bold) )),


      ) ,

      body:Container(
               width: double.infinity,
               height: double.infinity,

              decoration :BoxDecoration(
              image:DecorationImage(
               image: NetworkImage('https://i.ibb.co/GshJHw3/ramadan.jpg',),

                  fit: BoxFit.cover,)
              ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:220.0),
              child: Text(
                  '$word' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white , fontSize: 25.0)),
            ),


            Container(height: 40.0,
              width: 170.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0) ,
                  topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0),
                ),
                color: Colors.blueGrey
              ) ,
              child: Text(
                  'عـدد التـسبيحـات' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white , fontSize: 25.0) ,textAlign: TextAlign.center),
            ),
            SizedBox(height: 10.0,),
            Text(
                "$counter" , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white , fontSize: 25.0)),

            SizedBox(height: 30.0,),
            ElevatedButton(onPressed: (){
              setState(() {
                counter++ ;
                if (counter == 15){
                  word = 'الحمدلله' ;
                  cycle++ ;
                }
                else if(counter ==30){
                  word = 'الله اكبر' ;
                  cycle++ ;
                }
                else if(counter ==45){
                  word = 'لا اله الا الله' ;
                  cycle++ ;
                }


              });


            },
              child: Text(
              'أضغط',
            ),
            style: ElevatedButton.styleFrom(
              elevation: 3,primary: Colors.blueGrey,
                minimumSize:Size(130,130),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0),
                  side: BorderSide(color:Colors.white ,width: 2.0,)),

              shadowColor: Colors.white,
                ),
            ),
            SizedBox(height: 10.0,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            ElevatedButton(onPressed: (){
              setState(() {
                counter = 0 ;
                cycle = 0 ;
                word = 'سبحان الله' ;
              });


            },
              child: Text(
                'البدء من جديد',style: TextStyle(fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                elevation: 1,primary: Colors.blueGrey,
                minimumSize:Size(60,40),),


              ),

            Text(
              'الدورة رقم : $cycle ',style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white , fontSize: 15.0),),


            ]),


               //

          ],
        ),


      ),

    );


  }
}
