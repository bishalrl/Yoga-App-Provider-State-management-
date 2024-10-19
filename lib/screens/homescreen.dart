import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider_statemanagement/screens/startup.dart';
import 'package:provider_statemanagement/widgets/animated_appbar.dart';
import 'package:provider_statemanagement/widgets/drawer.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _colorTween,_homeTween,_yogaTween,_iconTween,_drawerTween;
  late AnimationController _textanimationcontroller;

  @override
  void initState() {
    _animationController=AnimationController(vsync: this,duration: Duration(seconds: 1));
    _colorTween=ColorTween(begin: Colors.transparent,end: Colors.white).animate(_animationController);
    _iconTween=ColorTween(begin: Colors.white,end: Colors.lightBlue).animate(_animationController);
    _drawerTween=ColorTween(begin: Colors.white,end: Colors.black).animate(_animationController);
    _homeTween=ColorTween(begin: Colors.white,end: Colors.blue).animate(_animationController);
    _yogaTween=ColorTween(begin: Colors.transparent,end: Colors.black).animate(_animationController);
    _textanimationcontroller=AnimationController(vsync: this,duration: Duration(seconds: 0));


    // TODO: implement initState
    super.initState();

  }

  bool scrollListener(ScrollNotification scrollNotification){
    bool scroll=false;
    if(scrollNotification.metrics.axis==Axis.vertical){
     _animationController.animateTo(scrollNotification.metrics.pixels/80);
     _textanimationcontroller.animateTo(scrollNotification.metrics.pixels); 
     return scroll=true;

    }
    return scroll;

  }



final GlobalKey<ScaffoldState>scaffoldkey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldkey,
        drawer: CustomDrawer(
          
        ),
        backgroundColor: Colors.white,
    
          body:NotificationListener(
            onNotification: scrollListener,
            child:Stack(
              children: [
                Container(
                  height: double.infinity,
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration:const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                                  ),
                                 child:const Padding(
                                   padding: const EdgeInsets.fromLTRB(50,100,50,30),
                                   child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          Text("1",style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20),),
                                          Text("strak",style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15
                                          ),),
                                        ],
                                      ),
                                       Column(
                                        children: [
                                          Text("2",style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20),),
                                          Text("Kcl",style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15
                                          ),),
                                        ],
                                      ),
                                       Column(
                                        children: [
                                          Text("3",style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20),),
                                          Text("Minutes",style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15
                                          ),),
                                        ],
                                      )
                                    ],
                                   ),
                                 ),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Startup()));
                                  },
                                  child: Container(margin: EdgeInsets.all(17),
                                   child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding:const EdgeInsets.only(bottom: 13),
                                        child:const Text("Yoga For All",style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          
                                        ),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Stack(
                                          children: [
                                          Container(
                                          
                                            height: 200,
                                            decoration:  BoxDecoration(
                                            borderRadius: BorderRadius.circular(9),
                                            image:const DecorationImage(
                                            image: NetworkImage("http://www.tapeteos.pl/data/media/914/big/joga__yoga_010.jpg"),
                                            fit: BoxFit.cover,
                                             ),
                                            ),
                                           ),
                                           Container(
                                            
                                            height: 200,
                                            color: Colors.black26,
                                           ),
                                           const Positioned(
                                            right: 20,
                                            left: 10,
                                             child: Text("Yoga For Begineers",style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17
                                             ),),
                                           ),
                                            const Positioned(
                                            right: 20,
                                            left: 10,
                                            top: 20,
                                             child: Text("Previously done :2 feb",style: TextStyle(
                                              color: Colors.white,
                                              
                                              fontSize: 11
                                             ),),
                                           ),
                                        
                                          ],
                                        ),
                                      ),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Stack(
                                          children: [
                                          Container(
                                          
                                            height: 200,
                                            decoration:  BoxDecoration(
                                            borderRadius: BorderRadius.circular(9),
                                            image:const DecorationImage(
                                            image: NetworkImage("https://images.squarespace-cdn.com/content/v1/5401c771e4b0f88422b00d5f/1480556046496-CTLFT5KY5MND85CVOK9J/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/boston-yoga-photography-1.jpg"),
                                            fit: BoxFit.cover,
                                             ),
                                            ),
                                           ),
                                           Container(
                                            
                                            height: 200,
                                            color: Colors.black26,
                                           ),
                                           const Positioned(
                                            right: 20,
                                            left: 10,
                                             child: Text("Yoga For Students",style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17
                                             ),),
                                           ),
                                            const Positioned(
                                            right: 20,
                                            left: 10,
                                            top: 20,
                                             child: Text("Previously done :2 feb",style: TextStyle(
                                              color: Colors.white,
                                              
                                              fontSize: 11
                                             ),),
                                           ),
                                         
                                          ],
                                                                             ),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Stack(
                                          children: [
                                          Container(
                                          
                                            height: 200,
                                            decoration:  BoxDecoration(
                                            borderRadius: BorderRadius.circular(9),
                                            image: const DecorationImage(
                                            image: NetworkImage("https://th.bing.com/th/id/R.19be8175531e228d56d27aa1511beba4?rik=bGWJfEon%2fSRObA&riu=http%3a%2f%2fwww.labrisaphotography.com%2fwp-content%2fuploads%2f2016%2f11%2fOutdoor-Yoga-Poses_013.jpg&ehk=ueoSkjw50XyYSy9C4SqnwLkGLxTSuQ%2bpbLj5yVAl3VI%3d&risl=&pid=ImgRaw&r=0"),
                                            fit: BoxFit.cover,
                                             ),
                                            ),
                                           ),
                                           Container(
                                            
                                            height: 200,
                                            color: Colors.black26,
                                           ),
                                           const Positioned(
                                            right: 20,
                                            left: 10,
                                             child: Text("Yoga For Breathing",style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17
                                             ),),
                                           ),
                                            const Positioned(
                                            right: 20,
                                            left: 10,
                                            top: 20,
                                             child: Text("Previously done :2 feb",style: TextStyle(
                                              color: Colors.white,
                                              
                                              fontSize: 11
                                             ),),
                                           ),
                                         
                                          ],
                                                                             ),
                                       ),
                                       Stack(
                                        children: [
                                        Container(
                                        
                                          height: 200,
                                          decoration:  BoxDecoration(
                                          borderRadius: BorderRadius.circular(9),
                                          image:const DecorationImage(
                                          image: NetworkImage("http://www.tapeteos.pl/data/media/914/big/joga__yoga_010.jpg"),
                                          fit: BoxFit.cover,
                                           ),
                                          ),
                                         ),
                                         Container(
                                          
                                          height: 200,
                                          color: Colors.black26,
                                         ),
                                         const Positioned(
                                          right: 20,
                                          left: 10,
                                           child: Text("Yoga For longlife",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17
                                           ),),
                                         ),
                                          const Positioned(
                                          right: 20,
                                          left: 10,
                                          top: 20,
                                           child: Text("Previously done :2 feb",style: TextStyle(
                                            color: Colors.white,
                                            
                                            fontSize: 11
                                           ),),
                                         ),
                                  
                                        ],
                                      ),
                                    ],
                                   ),
                                  ),
                                ),
                               

                              ],
                            )
                          ],
                        ),
                      ),
                      AnimatedAppbar(IconTween: _iconTween,
                       animationController: _animationController,
                       colorTween: _colorTween, 
                       drawerTween: _drawerTween,
                        homeTween: _homeTween, 
                        yogaTween: _yogaTween, 
                        onpressed:(){
                          scaffoldkey.currentState?.openDrawer();
                        } )
                    ],
                  ),
                )
              ],

            ) )
                  ),
    );
  }
}