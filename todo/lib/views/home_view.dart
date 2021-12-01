

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:todo/views/create_todo_view.dart';

import 'custom_widgets/padding_with_text.dart';

class HomeView extends StatelessWidget {
  const HomeView ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: const Color.fromRGBO(250,250, 225, 1),
      appBar: AppBar(
        leading: const Icon(Icons.menu,size: 30.0,
        color: Colors.grey,),
        
        backgroundColor: const Color.fromRGBO(250,250, 225, 1),
      actions: const [
        IconButton(onPressed: null, icon: Icon(Icons.search_outlined)),]
      ),
     body:SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "whats up fauzia",
                 style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,)
                ),
            ),
           const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "CATEGORIES",
                 style: TextStyle(
                fontSize: 14,
                color: Colors.grey,)
                ),
            ),
            
          Row(
            children: [
              const  CardCategory(
                indicatorColor: Colors.blue,
                mainText: " Personal",
                completionLevel: 30.0,
                tasks: " 18 task",
              ),
                  SizedBox(
                width:MediaQuery.of( context).size.width * 0.45,
                height:  MediaQuery.of(context).size.width * 0.25,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      elevation: 0,
                     color: Colors.white24,
                     child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          const PaddingWithText(
                            text: '40 tasks',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: null,
                            padding: EdgeInsets.all(18.0),
                          ),
                          LinearPercentIndicator(
                        width: 100.0,
                        lineHeight: 8.0,
                        percent: 0.5,
                        progressColor: Colors.blueAccent,
                      )
                           ]  
                            ) ),
                      ) ),  
                       ) ],
                        ),
                        const  Padding(
                      padding:  EdgeInsets.all( 18.0),
                  child: Text(
                    "Today's Task", 
                  style: TextStyle(
                     fontSize: 12,
                   fontWeight: FontWeight.bold,
                   color: Colors.grey,
                    ),
                    ),
                     ), 
     
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height,
                        ),
                        child: ListView.separated(
                          itemBuilder: (BuildContext context,int index){
                            return  Card(
                            elevation: 0,
                              child: Row(
                                children: const [
                                  Radio(
                                    value: " " ,
                                  groupValue: " " ,
                                  onChanged: null,
                                  activeColor:  Colors.pink,
                                  ),
                                  Text(
                                    " Daily meeting with team",
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize:  15.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                    ),
                              
                                    ),
                                ],
                              ),
                            );
                          }, 
                        separatorBuilder: (BuildContext context, int index){
                          return  const SizedBox(height: 5,);
                        }, 
                        itemCount: 15
                           ),
                      )]
                     ),


     ),
     floatingActionButton:FloatingActionButton(
       backgroundColor: Colors.blue,
       onPressed: (){
         Navigator.of(context).push(
           MaterialPageRoute(
             builder: (BuildContext context)=> const CreateTodoView(),
          
             ),
         );
       },
       child: const Icon(
         Icons.add, size: 28,
         
         ),
       ),
     );

  }}

class CardCategory extends StatelessWidget {
  final String? tasks;
  final String? mainText;
  final Color? indicatorColor;
  final double?  completionLevel;
  const CardCategory({
      Key? key,
      required this.mainText,
    required this.tasks,
    required this.indicatorColor,
    required this.completionLevel,
   
   }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:MediaQuery.of( context).size.width * 0.45,
      height:  MediaQuery.of(context).size.width * 0.25,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Card(
            elevation: 0,
           color: Colors.white24,
           child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                PaddingWithText(
                   padding: const EdgeInsets.only(left: 10.0),
                  text: tasks.toString(),
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.all( 15.0),
                  child: Text("Business", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                ),
                LinearPercentIndicator(
              width: 100.0,
              lineHeight: 8.0,
              percent: 0.7,
              progressColor: Colors.pink,
            )
                 ]   )),
        )
          ),
     
        );
  }
}



//       backgroundColor: Colors.cyanAccent,
//       appBar: AppBar(
//         title:  const Text(
//           "Todo App",
//           style: TextStyle(
//             fontSize: 25.0,
//             fontWeight: FontWeight.w900,
//             fontStyle: FontStyle.italic,
//             backgroundColor: Color.fromRGBO(0, 0, 0, 0.1),
//             letterSpacing: 0.5,
//             wordSpacing: 15.0,
//           ),
//           ),
//           actions: [
//             IconButton (onPressed: (){}, icon: const Icon(Icons.menu))
//           ],
//         centerTitle: true,
//         backgroundColor: Colors.red[200], 
//       ),
//       floatingActionButton:FloatingActionButton(
//         onPressed: (){},
//         child:const Text("click "),
//       backgroundColor: Colors.amberAccent,
//       ),
//      bottomNavigationBar: BottomNavigationBar(
//      currentIndex: 0,
//      fixedColor: Colors.blue,
//      items: const [
//        BottomNavigationBarItem(
//          label:  ("Home"),
//          icon: Icon(Icons.home), 
//          ),
//          BottomNavigationBarItem(
//            label: ("Search"),
//            icon: Icon(Icons.search), 
//            ),
//            BottomNavigationBarItem(
//              label: ("profile"),
//              icon: Icon(Icons.account_circle), 
//              ),]
//          ),
//            body: ListView.separated(
//         itemBuilder: (BuildContext context, int index){
//       return const ListTile(
//         leading: CircleAvatar(
//           radius: 30,
//           backgroundImage: AssetImage('assets/images/todo.jpg'),
//         ),
//         title: Text("fauzia"),
// subtitle: Text("i am good"),
// trailing: Icon(Icons.favorite, color: Colors.amber,),
//       );
//     },
//     separatorBuilder: (BuildContext context, int index ){
//     return const Divider(
//       indent: 70,
//       thickness: 1,
//     );
//     },
//    itemCount: 20, 
    
//   )
         
    