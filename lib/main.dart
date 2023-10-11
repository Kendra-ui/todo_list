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
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {  
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10),
              child: Text('Shopping List', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 45),
              ),
              ),
            Padding(padding: EdgeInsetsDirectional.all(50),
            child: 
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Title',
              ),
              ),
              )
            ],
          ),
        ),
        ),
    );
  }
}
