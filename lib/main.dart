import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:todo_list/homepage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false ,
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
    );
  }
}