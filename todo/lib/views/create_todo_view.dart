import 'package:flutter/material.dart';

class CreateTodoView extends StatelessWidget {
  const CreateTodoView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Scaffold(
        backgroundColor: Colors.white10,
        body:  Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                Container(
                  margin: const EdgeInsets.fromLTRB(20,110,20,10),
                  child:  TextField(
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
                     borderRadius: BorderRadius.circular(30),
                   )
                   ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: SizedBox(
                    height: 70,
                    width: 120,
                     child: InkWell(
                       onTap: (){},
                       child: Card(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(40.0),
                         ),
                        color: Colors.grey,
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
                                 fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  ),
                                 ),
                            ),
                              
                           
                          ],
                        ),
                     
                                         ),
                     ),
                  ),
                )
          ],
        )
      ),
    );
  }
}