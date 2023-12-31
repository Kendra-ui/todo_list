import 'package:flutter/material.dart';
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
      home:  Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
  }

class _HomeState extends State<Home> {
   
  

  @override
  Widget build(BuildContext context) {  
    return  Scaffold(
      backgroundColor: Colors.black,
      body:SafeArea(
        child:Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/BG.jpg"),
            //fit: BoxFit.cover
            ),
          ),
        child:  const HomePage())) ,

    );
  }
}