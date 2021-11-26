

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title:  const Text(
          "Todo App",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            backgroundColor: Color.fromRGBO(0, 0, 0, 0.1),
            letterSpacing: 0.5,
            wordSpacing: 15.0,
          ),
          ),
          actions: [
            IconButton (onPressed: (){}, icon: const Icon(Icons.menu))
          ],
        centerTitle: true,
        backgroundColor: Colors.red[200], 
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){},
        child:const Text("click "),
      backgroundColor: Colors.amberAccent,
      ),
     bottomNavigationBar: BottomNavigationBar(
     currentIndex: 0,
     fixedColor: Colors.blue,
     items: const [
       BottomNavigationBarItem(
         label:  ("Home"),
         icon: Icon(Icons.home), 
         ),
         BottomNavigationBarItem(
           label: ("Search"),
           icon: Icon(Icons.search), 
           ),
           BottomNavigationBarItem(
             label: ("profile"),
             icon: Icon(Icons.account_circle), 
             ),]
         ),
           body: ListView.separated(
        itemBuilder: (BuildContext context, int index){
      return const ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/todo.jpg'),
        ),
        title: Text("fauzia"),
subtitle: Text("i am good"),
trailing: Icon(Icons.favorite, color: Colors.amber,),
      );
    },
    separatorBuilder: (BuildContext context, int index ){
    return const Divider(
      indent: 70,
      thickness: 1,
    );
    },
   itemCount: 20, 
    
  )
         );
     
}
}