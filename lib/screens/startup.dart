import 'package:flutter/material.dart';
import 'package:provider_statemanagement/screens/ruready.dart';
class Startup extends StatelessWidget {
  const Startup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        floatingActionButton: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AreYouReady()));
        }, child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("START",style: TextStyle(
              fontSize: 20
          ),),
        )),
          body: CustomScrollView(
              slivers: [
                  SliverAppBar(
                      flexibleSpace: FlexibleSpaceBar(
                          collapseMode: CollapseMode.parallax,
                          title: Text("Yoga for Better Life"),
                          background: Image.network("https://images.pexels.com/photos/2035066/pexels-photo-2035066.jpeg",fit: BoxFit.cover,),
                      ),
                      expandedHeight: 300,
                      title: Text("App Bar"),
                      leading: Icon(Icons.backup_sharp),
                      actions: [
                          IconButton(onPressed: (){},
                           icon: Icon(Icons.thumb_up,color: Colors.blueAccent,))
                      ],
                  ),
                  SliverToBoxAdapter(
                      child:Container(
                        padding: EdgeInsets.all(18),
                        child: Column(
                            children: [
                                Row(
                                    children: [
                                        Text("!6 min || 26 Workouts",style: TextStyle(
                                            fontWeight: FontWeight.w400
                                        ),)
                                    ],
                                ),
                                Divider(thickness: 2,),
                                ListView.separated(
                                shrinkWrap: true,
                                 physics: NeverScrollableScrollPhysics(),
                                separatorBuilder: (context,index)=>Divider(thickness: 2,), 
                                itemBuilder: (context,index)=>
                                ListTile(
                                    leading:Container(
                                        margin: EdgeInsets.only(
                                            right: 20
                                        ),
                                    child:Image.network("https://th.bing.com/th/id/R.a202cce13a71b8eb9e6e852a1a859c0e?rik=X9cZYQQrMYLrSA&pid=ImgRaw&r=0",
                                    fit: BoxFit.cover,) ),
                                    title: Text("Yoga$index",style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                    ),),
                                    subtitle: Text((index%2==0)?"00:20":"x20",style: TextStyle(
                                        fontSize: 13
                                    ),),
                                ),                                
                                 itemCount: 10)
                            ],
                        ),
                          
                      )
                  )
                 
              ],
              
          ),
      ),
    );
  }
}