import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/screens/workoutdetails.dart';

class AreYouReady extends StatelessWidget {
  const AreYouReady({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModel>(
      create: (context) => TimerModel(context),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Are You Ready",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Consumer<TimerModel>(builder: (context, myModel, child) {
                    return Text(
                      "${myModel.countdown.toString()}",
                      style: TextStyle(fontSize: 30),
                    );
                  }),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align text to start
                children: [
                  
                     Container(
                      width:MediaQuery.of(context).size.width,
                      child: Divider(thickness: 2)),
                  
                  Text(
                    "Next: Anulom Vilom",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimerModel with ChangeNotifier {
  TimerModel(context) {
    MyTimer(context);
  }

  int countdown = 5;

  MyTimer(context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      notifyListeners();
      if (countdown == 0) {
        timer.cancel();
        Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkOutDetail()));
      }
    });
  }
}
