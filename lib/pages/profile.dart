import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     

body: Column(children: [
Padding(
  padding: const EdgeInsets.only(top:30),
  child:   Center(child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,

    children: [

      CircleAvatar(
        
        radius: 50,
        backgroundColor: Colors.white,
        child: Image.asset("images/istockphoto-1300845620-612x612.jpg"),),
         Container(

          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          
          
          child:Column(
      children: [
Text("username")


      ],
    ) ,)
    ],
  ),),
)
,Center(child:Text("hi` Khaled",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),) ,)
,



Padding(
  padding: const EdgeInsets.only(top: 16,right: 8,left: 8,bottom: 8),
  child:   Column(
  
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
    crossAxisAlignment: CrossAxisAlignment.start,
  
    children: [
  
  Padding(
  
    padding: const EdgeInsets.all(8.0),
  
    child:   Row(
  
    
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    
  
      children: [
  
    
  
            
  
    
  
        
  
    
  
         
  
    
  
            Text("My Profile",style: TextStyle(fontWeight: FontWeight.bold),),  
  
    
  
          Image.asset("images/chevron-right.png")
  
    
  
        
  
    
  
        
  
    
  
      ],
  
    
  
    ),
  
  ),Padding(
  
    padding: const EdgeInsets.all(8.0),
  
    child:   InkWell(


      child: Row(
      
      
      
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      
      
        children: [
      
      
      
              
      
      
      
          
      
      
      
           
      
      
      
              Text(" Change Password",style: TextStyle(fontWeight: FontWeight.bold),),  
      
      
      
            Image.asset("images/chevron-right.png")
      
      
      
          
      
      
      
          
      
      
      
        ],
      
      
      
      ),
    ),
  
  )
  
  ,Padding(
  
    padding: const EdgeInsets.all(8.0),
  
    child:   Row(
  
    
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    
  
      children: [
  
    
  
            
  
    
  
        
  
    
  
         
  
    
  
            Text("Payment Settings",style: TextStyle(fontWeight: FontWeight.bold),),  
  
    
  
          Image.asset("images/chevron-right.png")
  
    
  
        
  
    
  
        
  
    
  
      ],
  
    
  
    ),
  
  )
  
  ,Padding(
  
    padding: const EdgeInsets.all(8.0),
  
    child:   Row(
  
    
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    
  
      children: [
  
    
  
            
  
    
  
        
  
    
  
         
  
    
  
            Text("My Voucher",style: TextStyle(fontWeight: FontWeight.bold),),  
  
    
  
          Image.asset("images/chevron-right.png")
  
    
  
        
  
    
  
        
  
    
  
      ],
  
    
  
    ),
  
  )
  
  ,Padding(
  
    padding: const EdgeInsets.all(8.0),
  
    child:   Row(
  
    
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    
  
      children: [
  
    
  
            
  
    
  
        
  
    
  
         
  
    
  
            Text("Notification",style: TextStyle(fontWeight: FontWeight.bold),),  
  
    
  
          Image.asset("images/chevron-right.png")
  
    
  
        
  
    
  
        
  
    
  
      ],
  
    
  
    ),
  
  )
  
  ,Padding(
  
    padding: const EdgeInsets.all(8.0),
  
    child:   Row(
  
    
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    
  
      children: [
  
    
  
            
  
    
  
        
  
    
  
         
  
    
  
            Text("About Us",style: TextStyle(fontWeight: FontWeight.bold),),  
  
    
  
          Image.asset("images/chevron-right.png")
  
    
  
        
  
    
  
        
  
    
  
      ],
  
    
  
    ),
  
  )
  
  ,Padding(
  
    padding: const EdgeInsets.all(8.0),
  
    child:   Row(
  
    
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    
  
      children: [
  
    
  
            
  
    
  
        
  
    
  
         
  
    
  
            Text("Contact Us",style: TextStyle(fontWeight: FontWeight.bold),),  
  
    
  
          Image.asset("images/chevron-right.png")
  
    
  
        
  
    
  
        
  
    
  
      ],
  
    
  
    ),
  
  )
  
  
  
  
  
  
  
  
  
  ],),
)


,

InkWell(
  

  child:   Padding(
  
    padding: const EdgeInsets.only(top:8),
  
    child:   Center(
  
    
  
      child:   Container(
  
        height: 50,
  
        margin: EdgeInsets.all(10),
  
        padding: EdgeInsets.all(10),
  
        alignment: Alignment.center,
  
        decoration: BoxDecoration(
  
          color: Color.fromARGB(255, 90, 9, 145),
  
          border: Border.all(
  
              color: Color.fromARGB(255, 186, 55, 212), 
  
              width: 3.0),   
  
          borderRadius: BorderRadius.all(
  
              Radius.circular(20.0)), 
  
         
  
        ),
  
        child: Text("Sign Out",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
  
      )
  
    ),
  
  ),
)

],),



    );
  }
}