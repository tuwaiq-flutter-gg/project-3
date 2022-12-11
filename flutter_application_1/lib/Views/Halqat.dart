import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Views/Home.dart';
import 'package:flutter_application_1/Views/eventStudent.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

class alqat extends StatefulWidget {
  const alqat({super.key});

  @override
  State<alqat> createState() => _alqatState();
}

class _alqatState extends State<alqat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0,centerTitle: true,
        leading:  IconButton(icon: Icon(Icons.arrow_back_ios_rounded),color: Colors.black, onPressed: () 
        {Get.to(Home());},),
      title:Text("إنجاز الحلقات",style: TextStyle(color: greendark,fontSize: 20,fontWeight: FontWeight.bold),) ,),
      body: 
      GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),color: green,),
            
            child: InkWell(onTap:() {
                   Get.to(EventStudent());
            }, child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: const Text(" حلقة أم سليم",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            )),
            ),
            ////////////////////////////
           Container(
            padding: const EdgeInsets.all(8),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),color: green,),
            
            child: InkWell(onTap:() {
                  //   showModalBottomSheet( 
                  //    isScrollControlled:true,
                  //    enableDrag: true,
                  //               // shape: RoundedRectangleBorder(
                  //               // borderRadius: BorderRadius.vertical(
                  //               // top: Radius.circular(30))),
                  //               context: context, builder:(context) =>  Image.asset("images/image6.png",fit: BoxFit.fill,),
                  // );
            }, child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: const Text(" حلقة ميمونة بنت الحارث",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            )),
            ),
            ////////////////////////////
              Container(
            padding: const EdgeInsets.all(8),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),color: green,),
            
            child: InkWell(onTap:() {
                  //   showModalBottomSheet( 
                  //    isScrollControlled:true,
                  //    enableDrag: true,
                  //               // shape: RoundedRectangleBorder(
                  //               // borderRadius: BorderRadius.vertical(
                  //               // top: Radius.circular(30))),
                  //               context: context, builder:(context) =>  Image.asset("images/image6.png",fit: BoxFit.fill,),
                  // );
            }, child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: const Text("حلقة الشيماء بنت الحارث ",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            )),
            ),
            ////////////////////////////
              Container(
            padding: const EdgeInsets.all(8),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),color: green,),
            
            child: InkWell(onTap:() {
                  //   showModalBottomSheet( 
                  //    isScrollControlled:true,
                  //    enableDrag: true,
                  //               // shape: RoundedRectangleBorder(
                  //               // borderRadius: BorderRadius.vertical(
                  //               // top: Radius.circular(30))),
                  //               context: context, builder:(context) =>  Image.asset("images/image6.png",fit: BoxFit.fill,),
                  // );
            }, child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: const Text("حلقة أسماء بنت أبو بكر ",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            )),
            ),
            ////////////////////////////
               Container(
            padding: const EdgeInsets.all(8),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),color: green,),
            
            child: InkWell(onTap:() {
                  //   showModalBottomSheet( 
                  //    isScrollControlled:true,
                  //    enableDrag: true,
                  //               // shape: RoundedRectangleBorder(
                  //               // borderRadius: BorderRadius.vertical(
                  //               // top: Radius.circular(30))),
                  //               context: context, builder:(context) =>  Image.asset("images/image6.png",fit: BoxFit.fill,),
                  // );
            }, child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: const Text("حلقة صفية بنت حيي ",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            )),
            ),
            ////////////////////////////
             Container(
            padding: const EdgeInsets.all(8),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),color: green,),
            
            child: InkWell(onTap:() {
              Get.to(EventStudent());
            },
             child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: const Text("حلقة أم حبيبة ",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            )),
            ),
  ],
)
    
    );
  }
}