
import 'package:flutter/material.dart';
import 'package:todo_list/todo.dart';

// ignore: must_be_immutable
class TodoContainer extends StatelessWidget {
  
  final Todo todo;
  final Function deleteItem;

   const TodoContainer
  ({super.key,required this.todo, required this.deleteItem});
  
  get index => null;
  

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        ListTile( 
          leading: Container(
            alignment: Alignment.center,
            width: 25,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(color: Colors.yellow),
              borderRadius: const BorderRadius.all(Radius.circular(5))
            ),
            child:   Text(todo.date, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          ),

          title:  Text(todo.title,style: const TextStyle(color: Colors.white) ,),
          trailing:  InkWell(
             onTap:() {
              deleteItem(index);
             },

            child:  
            const Icon(Icons.cancel_sharp, color: Colors.yellow,)
          ),
            
         ),
        const Divider(color: Colors.yellow,)
      ],
    );
  }
  

}


