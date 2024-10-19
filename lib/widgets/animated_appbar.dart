import 'package:flutter/material.dart';
class AnimatedAppbar extends StatelessWidget {
  AnimationController animationController;
  Animation colorTween,homeTween,IconTween,drawerTween,yogaTween;
  Function()onpressed;

  AnimatedAppbar({required this.IconTween,
  required this.animationController,
  required this.colorTween,
  required this.drawerTween,
  required this.homeTween,
  required this.yogaTween,
  required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      child: AnimatedBuilder(animation: animationController,builder:
       (context,child)
       =>AppBar(
        leading: IconButton(icon: Icon(Icons.dehaze,color: drawerTween.value,),
        onPressed: onpressed,),
        backgroundColor: colorTween.value,
        elevation: 0,
        title: Row(
          children: [
            Text("Home",style: TextStyle(
              color: homeTween.value,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            Text("Yoga",style: TextStyle(
              color: yogaTween.value,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),)
          ],
        ),
        actions: [
          Icon(Icons.notifications,color: IconTween.value,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.green,
            ),
          )
        ],
      ),
      ),
    );
  }
}