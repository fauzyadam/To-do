import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateTodoView extends StatefulWidget {
  const CreateTodoView({ Key? key }) : super(key: key);

  @override
  State<CreateTodoView> createState() => _CreateTodoViewState();
}

class _CreateTodoViewState extends State<CreateTodoView> {
  String _value = "Select a todo category";
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Scaffold(
        backgroundColor: Colors.white10,
        body:  SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:  const  EdgeInsets.only(top: 20, right: 20),
                padding: const EdgeInsets.only(top:40, right: 20),
                alignment: Alignment.topRight,
                child:   SizedBox(
                  width:  65,
                  height: 60,
                  child:  Card(
                    shape: const CircleBorder(
                      side:  BorderSide(
                        color: Colors.grey,
                        width: 1,
                        ),
                    
                    ),
                    child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close, size: 32,
                        ),  
                      ),
                  ),
                ),
              ),
                  Column(
                    children: [
                      Container(
                     child: TextField(
                         maxLines: null,
                         keyboardType: TextInputType.multiline,
                        
                          showCursor:  true,
                        cursorColor: Colors.brown,
                 decoration: InputDecoration(
                         hintText: " Enter new todo",
                         hintStyle:  const TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.bold,  
                         ),
                         prefixIcon: const Icon(Icons.person_pin_circle),
                         fillColor: Colors.white,
                         focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(
                             color: Colors.lightBlueAccent.shade200,
                             width:  1,
                           ),
                           borderRadius: BorderRadius.circular(50),
                         )
                         ),
                        ),
                      ),
                     PopupMenuButton(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20),
                       ),
                        child: Row(
                          children: [
                         Padding(
                         padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
                           child: Text(
                             _value,
                             style:const TextStyle(
                               fontSize: 20,
                             ),
                             ),
                         ),
                          const Icon(Icons.arrow_drop_down_outlined,
                           size: 40,)
                        ],),
                        onSelected: (value){
                          setState(() {
                            _value = value.toString();
                          });
                        },
                       itemBuilder:(
                       BuildContext context)=>[
                         const PopupMenuItem(
                           child:Text(
                             "Personal",
                             style: TextStyle(
                               fontSize: 20,
                               fontWeight: FontWeight.bold,
                               color: Colors.blue,
                             ),
                             ),
                           value: 'Personal',
                         ),
                        const  PopupMenuItem(
                           child:Text(
                             "Business",
                             style: TextStyle(
                               fontSize: 20,
                               fontWeight: FontWeight.bold,
                               color: Colors.blue,
                             ),
                             ),
                           value: 'Business',
                         )
                       ]
                       )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        child: SizedBox(
                          height: 70,
                          width: 120,
                           child: InkWell(
                             onTap: (){},
                             child: Card(
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(60.0),
                               ),
                              color: Colors.white,
                              child: Row(
                                children:const  [
                                  Padding(
                                    padding: EdgeInsets.only(left:8.0),
                                    child: Icon(
                                      Icons.calendar_today,
                                      size: 20.0,
                                     ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:8.0),
                                    child: Text(
                                      "Today",
                                      style: TextStyle(
                                       fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        ),
                                       ),
                                  ),
                                    
                              
                                ]
                                  
                                 )
                             ),
                                ),
                             ),
                           ),
                           Container(
                             margin: const EdgeInsets.only(left: 30),
                             child: SizedBox(
                               width: 70,
                               height: 70,
                               child: InkWell(
                                 onTap: (){},
                                 child:const Card(
                                   elevation: 0,
                                   shape: CircleBorder(
                                     side: BorderSide(
                                       color: Colors.grey,
                                       width: 2,
                                  )
                                   ),
                                   child: Icon(
                                     Icons.radio_button_checked,
                                     size:  30,
                                     color: Colors.blue,
                                    ),
                                 ),
                               ),
                             ),
                           ) ],
                  ),
                  Container(
                  
                    margin: const EdgeInsets.only(top: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:const [
                        IconButton(
                        
                          onPressed: null, 
                          icon: Icon(Icons.create_new_folder_outlined),
                          iconSize: 30,
                          color: Colors.grey,
                          ),
                          IconButton(onPressed: null,
                          icon: Icon(Icons.flag_outlined),
                          iconSize: 30,
                          
                          color: Colors.blue,
                          ),
                          IconButton(onPressed: null,
                           icon: Icon(Icons.dark_mode_outlined),  
                          
                          )
                      ],
                    ),
                  ),
                  Container(
            alignment: Alignment.center,
            margin:const EdgeInsets.fromLTRB(0, 70, 20,10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.50,
              height: MediaQuery.of(context).size.height * 0.20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: ElevatedButton(
                  onPressed:null,
                          style:  ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(22, 106, 237, 1),
                ),),
                            child: Row(
                              children:const[
                                Text(
                                  "New Tasks",
                              style: TextStyle(
                                fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  ),
                                Icon(  
                                    Icons.expand_less,
                                    color: Colors.white,
                                    size: 30,
                                  )
                              ]
                          ),
                
                    ),
              ),
            ),
          )
            ],
                  
            
                  
          ),
        ),
          
        )
    ); 
  } 
}

