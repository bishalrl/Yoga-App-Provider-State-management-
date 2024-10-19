import 'package:flutter/material.dart';
class Finish extends StatelessWidget {
  const Finish({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network("https://th.bing.com/th/id/OIP.fuvDTC2zswBzi2eDJAf3twHaHa?rs=1&pid=ImgDetMain",width: 350,height: 400,),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("123",style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500
                      ),),
                      Text("KCL",style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                  Column(
                    children: [
                      Text("12",style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500
                      ),),
                      Text("Minutes",style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                  
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Do It Again",style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w400
                      ),),
                  Text("Share",style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w400
                      ),)
                ],
              ),
            ),
            Divider(thickness: 3,),
            Container(
              child: Column(
                children: [
                  ElevatedButton(onPressed: (){}, 
                  child:Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      child: Text("Rate Our APP",style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400
                        ),),
                    ),
                  ), ),
                  
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    color: const Color.fromARGB(255, 188, 188, 188),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}