
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