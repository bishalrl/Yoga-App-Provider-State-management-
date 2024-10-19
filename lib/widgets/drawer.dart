import 'package:flutter/material.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Column(
        children: [
          Container(
  height: 200,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(9),
    image: const DecorationImage(
      image: NetworkImage("https://images.pexels.com/photos/2035066/pexels-photo-2035066.jpeg"),
      fit: BoxFit.cover,
    ),
  ),
),

       const ListTile(leading: Icon(Icons.restart_alt_outlined),
          title: Text("Peset Progress",style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold

          ),
          ),
        ) , 
             const   ListTile(leading: Icon(Icons.shape_line_outlined),
          title: Text("Share",style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold

          ),
          ),
        ) , 
          const      ListTile(leading: Icon(Icons.star_border_outlined),
          title: Text("Rate US",style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold

          ),
          ),
        ) , 
            const    ListTile(leading: Icon(Icons.comment),
          title: Text("Feedback",style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold

          ),
          ),
        ) , 
          const      ListTile(leading: Icon(Icons.security_rounded),
          title: Text("Privacy Policy",style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold

          ),
          ),
        ) , 
       const Divider(thickness: 2,endIndent: 25,indent: 25,),
        const Text("version 2.1.2",style: TextStyle(
          fontWeight: FontWeight.bold
        ),)
        ],
      ),
    );
  }
}