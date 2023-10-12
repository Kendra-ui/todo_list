import 'package:flutter/material.dart';
import 'package:todo_list/todo.dart';
import 'package:todo_list/widgets/todo_container.dart';

class HomePage extends StatefulWidget {
   const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
   
}

class _HomePageState extends State<HomePage> {
  List<Todo> todos = List.empty();

  final _titleController = TextEditingController();
  final _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      backgroundColor: Colors.black,
      body: SafeArea(

        child:SingleChildScrollView(

          child: Column(
            children:[
              const Padding(padding: EdgeInsets.all(10),   
              child: 
              Text('Shopping List', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
              ),
              ), 

              Padding( padding: const EdgeInsets.only(top:10, left: 4,right: 4),
                child:
                
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       SizedBox(
                        width: 180,
                        height: 38,
                         child: TextFormField(
                          controller: _titleController,
                          decoration: const InputDecoration(
                            labelText: "Title...",
                            filled: true,
                            fillColor: Color.fromARGB(255, 241, 240, 240),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none
                            )
                          ),
                         ),
                       ),
                     
                   
              
                SizedBox(
                  width: 70,
                  height: 38,
                  child: TextFormField(
                      controller: _dateController,
                      keyboardType: TextInputType.datetime,
                      decoration: const InputDecoration(
                        labelText: "Date...",
                        filled: true,
                        fillColor: Color.fromARGB(255, 241, 240, 240),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none
                        )
                      ),
                     ),
                ),
                  Text(_dateController.text),

              Padding(padding: const EdgeInsets.only(right: 5),
                child: SizedBox(
                  width: 100,
                  height: 38,
                  child: ElevatedButton(
                    onPressed: () =>Navigator.pushNamed(context, ''),                    
                    style:  ElevatedButton.styleFrom(
                      backgroundColor:Colors.transparent,
                      side: const BorderSide(
                        color: Colors.yellow,
                        width: 1.5,
                      )
                    ),
                     child: 
                          const Text('Add', textAlign: TextAlign.center,),
                      
                      ),
                ),
              ),
            ]
            ) 
          ),

          ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index)=>getRow(index)
            )
    ]
        )
      )
    )
    );
    
  }
  
 Widget getRow(int index) {
  return const  TodoContainer();
 }
}