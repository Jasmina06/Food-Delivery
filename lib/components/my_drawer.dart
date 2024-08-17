import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_drawer_tile.dart';

import '../pages/settings_page.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: Theme.of( context ).colorScheme.background ,
      child: Column(
        children: [
          //app logo
          Padding(
            padding: const EdgeInsets.only(top:100.0),
            child: Icon(Icons.lock_open_rounded ,
            size:80,
            color:Theme.of(context ).colorScheme.inversePrimary ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color:Theme.of(context ).colorScheme.primary
            ),
          ),

          // home list tittle
          MyDrawerTile(text: "H O M E" ,
              icon:Icons.home,
          onTap: () => Navigator.pop(context )),

          //setting list tittle
          MyDrawerTile(text: "S E T T I N G S" ,
              icon:Icons.settings,
              onTap: (){
                Navigator.pop(context );
                Navigator.push(
                  context ,
                  MaterialPageRoute(builder:  (context )=> const  SettingsPage())
                );
              }),

          const Spacer() ,

          //logout list title
          MyDrawerTile(text: "L O G O UT " ,
              icon:Icons.logout,
              onTap: (){}),
          const SizedBox(height: 25)
        ],
      )
    );
  }
}
