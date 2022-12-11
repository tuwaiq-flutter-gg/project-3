import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myevent/components.dart/cards.dart';

class weekly extends StatelessWidget {
  const weekly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


backgroundColor: Color.fromARGB(255, 215, 232, 241),

body: ListView(children: [


Padding(
   padding: const EdgeInsets.all(13.0),
   child: Padding(
     padding: const EdgeInsets.only(top:20.0),
     child: Stack(
       children: [
Container(

    decoration: BoxDecoration(
    
      color: Color.fromARGB(189, 47, 11, 92),
    
      
    
      borderRadius: BorderRadius.only(topLeft:Radius.circular(20)))
     , width: 500,
      height: 340,

   )
   ,Padding(
     padding: const EdgeInsets.all(8.0),
     child: Text("starday",style: TextStyle( fontSize: 20),),
   )
   ,Padding(
     padding: const EdgeInsets.fromLTRB(8.0,30,0,0),
     child:  MyCard(Destance: 30,SecText: "Music",cardTitle: "THE MUSICAL MANSION",imagepath: "images/event1.jpg",),
   )
   
   ]))),
Padding(
   padding: const EdgeInsets.all(13.0),
   child: Padding(
     padding: const EdgeInsets.only(top:20.0),
     child: Stack(
       children: [
Container(

    decoration: BoxDecoration(
    
      color: Color.fromARGB(189, 47, 11, 92),
    
      
    
      borderRadius: BorderRadius.only(topLeft:Radius.circular(20)))
     , width: 500,
      height: 340,

   )
   ,Padding(
     padding: const EdgeInsets.all(8.0),
     child: Text("Monday",style: TextStyle( fontSize: 20),),
   )
   ,Padding(
     padding: const EdgeInsets.fromLTRB(8.0,30,0,0),
     child:  MyCard(Destance: 30,SecText: "games",cardTitle: "VOV COMMUNITY TOURNAMENT",imagepath: "images/event2.jpeg",),
   )
   
   ])))

,Padding(
   padding: const EdgeInsets.all(13.0),
   child: Padding(
     padding: const EdgeInsets.only(top:20.0),
     child: Stack(
       children: [
Container(

    decoration: BoxDecoration(
    
      color: Color.fromARGB(189, 47, 11, 92),
    
      
    
      borderRadius: BorderRadius.only(topLeft:Radius.circular(20)))
     , width: 500,
      height: 340,

   )
   ,Padding(
     padding: const EdgeInsets.all(8.0),
     child: Text("Wednesday",style: TextStyle( fontSize: 20),),
   )
   ,Padding(
     padding: const EdgeInsets.fromLTRB(8.0,30,0,0),
     child: MyCard(Destance: 30,SecText: "kids",cardTitle: "SCIENCE FACTORY",imagepath: "images/event4.jpg",),
   )
   
   ]))),Padding(
   padding: const EdgeInsets.all(13.0),
   child: Padding(
     padding: const EdgeInsets.only(top:20.0),
     child: Stack(
       children: [
Container(

    decoration: BoxDecoration(
    
      color: Color.fromARGB(189, 47, 11, 92),
    
      
    
      borderRadius: BorderRadius.only(topLeft:Radius.circular(20)))
     , width: 500,
      height: 340,

   )
   ,Padding(
     padding: const EdgeInsets.all(8.0),
     child: Text("Friday",style: TextStyle( fontSize: 20),),
   )
   ,Padding(
     padding: const EdgeInsets.fromLTRB(8.0,30,0,0),
     child:MyCard(Destance: 30,SecText: "Sports",cardTitle: "Maroc vs portugal",imagepath: "images/event3.jpg",) ,
   )
   
   ]))),



],),


    );
  }
}