
import 'dart:html';

import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title:  const Text(
            "linked compus", 
            style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            backgroundColor: Colors.amber,
            letterSpacing: 0.5,
            ),
          ),
          centerTitle:true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(2.0),
        itemBuilder: (BuildContext context, int index){
          return const ListTile(
            leading: (
              CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.orange,
                backgroundImage: AssetImage("Assets/images/todo 3.jpg"),
              )
            ),
          title: Text("that baby"),
           subtitle: Text("is my baby"),
           trailing: Icon(Icons.favorite, color: Colors.black12, size: 20.0, semanticLabel: "play",),
          );
           },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 20.0,
              thickness: 5.0,
              indent: 10.0,
              endIndent: 10.0,
              color: Colors.cyan,
);
          },
      itemCount: 10,
      
      ),

   bottomNavigationBar: BottomNavigationBar(
     currentIndex: 0,
     fixedColor: Colors.blue,
     items: const [
       BottomNavigationBarItem(
         label:  "Home",
         icon: Icon(Icons.home), 
         ),
         BottomNavigationBarItem(
           label: "Search",
           icon: Icon(Icons.search), 
           ),
           BottomNavigationBarItem(
             label: "profile",
             icon: Icon(Icons.account_circle), 
             ),
     ]
         ),
         drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                  ),
                  child: Text(
                    "LinkedCompus",
                    style: TextStyle(
                      color: Colors.black12,
                      fontSize: 24,

                    ),
                    ),
              ),
               ListTile(
      title: 
      Text("Item 1"),
      leading: Icon(Icons.people),
      ),
     ListTile(
       title: 
       Text("Item 2"),
       leading: Icon(Icons.mail),
),
            ]) 
         ),
         floatingActionButton: const FloatingActionButton(onPressed: null,child: Icon(Icons.add),),
         );
  
   
  }
}