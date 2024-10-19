import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Break extends StatelessWidget {
  const Break({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider<TimerModelSec>(
      create:(context)=>TimerModelSec(context),
      child: SafeArea(child: 
      Scaffold(
        body:Container(
          width: MediaQuery.of(context).size.width,
          //height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://th.bing.com/th/id/OIP.OlVba0pZzci4w6PLw1oPggHaHa?rs=1&pid=ImgDetMain"),fit: BoxFit.cover)
          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                              Spacer(),

              Text("Break Time",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),),
              Consumer<TimerModelSec>(builder: (context,myModel,child){
                return  Text(
                      "${myModel.countdown.toString()}",
                      style: TextStyle(fontSize: 50),
                    );
              }),
             
              SizedBox(height: 10,),
                              Spacer(),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(onPressed: (){}, child: Text("Skip",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19
              ),)),
              ),
                              Spacer(),
                              SizedBox(height: 10,),

              Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 15
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){}, child: Text("Previous",style: TextStyle(fontSize:30,color:Colors.black),)),
                      TextButton(onPressed: (){}, child: Text("Next",style: TextStyle(fontSize: 33,color: Colors.black),)),
                    ],
                  ),
                ),
                Spacer(),
                Divider(thickness: 2,),
                Spacer(),
                 Text(
                    "Next: Anulom Vilom",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,)

            ],
          ) ,
        ) ,
      )),
    );
  }
}

class TimerModelSec with ChangeNotifier{
  TimerModelSec(context){
    MyTimer(context);
  }
  int countdown=30;

  MyTimer(context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      notifyListeners();
      if (countdown == 0) {
        timer.cancel();
        //Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkOutDetail()));
      }
    });
  }
}