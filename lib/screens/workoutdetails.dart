import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/screens/break.dart';
class WorkOutDetail extends StatelessWidget {
  const WorkOutDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModelSec>(
      create: (context)=>TimerModelSec(context),
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                child: Column(
                  
                  children: [
                    Container(
                      height: 300,
                      decoration:const BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://th.bing.com/th/id/R.a202cce13a71b8eb9e6e852a1a859c0e?rik=X9cZYQQrMYLrSA&pid=ImgRaw&r=0"),fit: BoxFit.cover)
                      ),
                    ),
                    Spacer(),
                    Text("Anulom Viilom",style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 34),),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 80),
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 207, 222, 249),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: 
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("00",style: TextStyle(
                              fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold
                            ),),
                            Text(":",style: TextStyle(
                              fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold
                            ),),
                            Consumer<TimerModelSec>(builder: (context,myModel,child){
                              return Text(myModel.countdown.toString(),style: TextStyle(
                                fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold
                              ),);
                            },),
                               
                            
                          ],
                        ),
                    ),
                    Spacer(),
                    SizedBox(height: 15,),
                    Consumer<TimerModelSec>(
                      builder: (context, myModel, child) {
                        return  ElevatedButton(onPressed: (){
                          myModel.show();
                        }, child: Container(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        child: Text("PAUSE",style: TextStyle(fontSize: 20,
                        color: Colors.black),)));
                      },
                      
                    ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 15
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(onPressed: (){}, child: Text("Previous",style: TextStyle(fontSize: 16),)),
                            TextButton(onPressed: (){}, child: Text("Next",style: TextStyle(fontSize: 16),)),
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
                ),
              ),
              Consumer<TimerModelSec>(builder: (context, myModel, child) {
                
              
                return Center(child: Visibility(
                  visible: myModel.visible,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blueAccent.withOpacity(0.8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Pause",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40
                        ),),
                        SizedBox(height: 20,),
                        OutlinedButton(onPressed: (){}, child: Text("RESTART",style: TextStyle(
                          fontSize:15 ,
                          color: Colors.white
                        ),),),
                        OutlinedButton(onPressed: (){}, child: Text("QUITE",style: TextStyle(
                          fontSize:15 ,
                          color: Colors.white
                        ),),),
                        OutlinedButton(onPressed: (){
                          myModel.hide();
                        }, child: Text("RESUME",style: TextStyle(
                          fontSize:15 ,
                          color: Colors.white
                        ),),
                        style:ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.green)
                        ),),
                      ],
                    ),
                
                  )
                  )
                  );}
              )
            ],
          ),
        ),
      ),
    );
  }
}
class TimerModelSec with ChangeNotifier {
  TimerModelSec(context) {
    _startTimer(context);
  }

  int countdown = 30;
  bool visible = false;
  bool isPaused = false;
  Timer? _timer;

  // Start the timer
  void _startTimer(context) {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (!isPaused) {
        countdown--;
        notifyListeners();

        if (countdown == 0) {
          timer.cancel();
          Navigator.push(context, MaterialPageRoute(builder: (context) => Break()));
        }
      }
    });
  }

  // Pause the timer
  void show() {
    isPaused = true; // Pause the timer
    visible = true; // Show the pause screen
    notifyListeners();
  }

  // Resume the timer
  void hide() {
    isPaused = false; // Resume the timer
    visible = false; // Hide the pause screen
    notifyListeners();
  }

  // Dispose of the timer when not needed to avoid memory leaks
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
