import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() {
      return _MyHomePageState();

  }
  }

class _MyHomePageState extends State<MyHomePage> {
   final TextEditingController _controller = TextEditingController();
    List<widget> _todolist = new List();


  @override
  Widget build(BuildContext context) {  
    return    Scaffold(
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

              Padding( padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding( padding: const EdgeInsets.all(5),
                      child: SizedBox(
                        width: 200,
                        height: 40,
                        child: Expanded(
                          child: TextField(
                          controller: _controller,
                          decoration:  InputDecoration(
                            hintText: 'Title...',
                            filled: true,
                            fillColor: const Color.fromARGB(255, 197, 197, 197),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide.none
                            )
                          ),
                          ),
                        ),
                      ),
                    ),
                    Padding( padding: const EdgeInsets.all(5),
                      child: SizedBox(
                        width: 70,
                        height: 40,
                        child: Expanded(
                          child: TextField(
                          controller: _controller,
                          decoration:  InputDecoration(
                            hintText: 'Date...',
                            filled: true,
                            fillColor: const Color.fromARGB(255, 216, 216, 216),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide: BorderSide.none
                            )
                          ),
                          ),
                        ),
                      ),
                    ),
              
                    Padding(padding: const EdgeInsets.only(left:5),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        side: const BorderSide(color: Colors.yellow)
                         ),
                      onPressed: () {
                        setState(() {
                          _todolist.add(const Text('text'));
                          print(_todolist);
                        });
                      },
                         child: const Text('Add', style: TextStyle(color: Colors.yellow),),
                                    ),
                    )
                  ],
                ),
              ),
             Expanded(
              child: ListView.builder(
                itemCount: _todolist.length,
                itemBuilder: (context, index){
                  widget widget = _todolist.elementAt(index);

                  return widget;
                })
                )
            ],
          ),
        ),
        ),
    );
  }
}


