import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Views/Home.dart';
import 'package:flutter_application_1/Views/StudentPage.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(backgroundColor: Colors.white, elevation: 0,centerTitle: true,
        leading:  IconButton(icon: Icon(Icons.arrow_back_ios_rounded),color: Colors.black, onPressed: () 
        {Get.to(Home());},),
      title:Text("حول",style: TextStyle(color: greendark,fontSize: 20,fontWeight: FontWeight.bold),) ,),
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
                    showModalBottomSheet( 
                                // shape: RoundedRectangleBorder(
                                // borderRadius: BorderRadius.vertical(
                                // top: Radius.circular(30))),
                                context: context, builder:(context) =>  Image.asset("images/image5.jpeg",fit: BoxFit.fill,),
                  );
            }, child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: const Text(" الرؤية والرسالة",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            )),
            ),
            ////////////////////////////
           Container(
            padding: const EdgeInsets.all(8),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),color: green,),
            
            child: InkWell(onTap:() {
                    showModalBottomSheet( 
                     isScrollControlled:true,
                     enableDrag: true,
                                // shape: RoundedRectangleBorder(
                                // borderRadius: BorderRadius.vertical(
                                // top: Radius.circular(30))),
                                context: context, builder:(context) =>  Image.asset("images/image6.png",fit: BoxFit.fill,),
                  );
            }, child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: const Text("شهادة التصريح",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            )),
            ),
            ////////////////////////////
              Container(
            padding: const EdgeInsets.all(8),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),color: green,),
            
            child: InkWell(onTap:() {
                    showModalBottomSheet( 
                     isScrollControlled:true,
                     enableDrag: true,
                                // shape: RoundedRectangleBorder(
                                // borderRadius: BorderRadius.vertical(
                                // top: Radius.circular(30))),
                                context: context, builder:(context) =>  Image.asset("images/image6.png",fit: BoxFit.fill,),
                  );
            }, child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: const Text("التبرع ",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            )),
            ),
            ////////////////////////////
              Container(
            padding: const EdgeInsets.all(8),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),color: green,),
            
            child:  InkWell(onTap:() {
                   Get.to(Student());
            }, child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: const Text("المصحف",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            )),
            ),
            ////////////////////////////
               Container(
            padding: const EdgeInsets.all(8),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),color: green,),
            
            child: InkWell(onTap:() {
                    showModalBottomSheet( 
                     isScrollControlled:true,
                     enableDrag: true,
                                // shape: RoundedRectangleBorder(
                                // borderRadius: BorderRadius.vertical(
                                // top: Radius.circular(30))),
                                context: context, builder:(context) =>  Image.asset("images/image6.png",fit: BoxFit.fill,),
                  );
            }, child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: const Text("إحصائيات ",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            )),
            ),
            ////////////////////////////
             Container(
            padding: const EdgeInsets.all(8),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),color: green,),
            
            child: InkWell(onTap:() {
                    showModalBottomSheet( 
                     isScrollControlled:true,
                     enableDrag: true,
                                // shape: RoundedRectangleBorder(
                                // borderRadius: BorderRadius.vertical(
                                // top: Radius.circular(30))),
                                context: context, builder:(context) =>  Image.asset("images/image6.png",fit: BoxFit.fill,),
                  );
            }, child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: const Text("الإنجازات",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            )),
            ),
  ],
)
    );
  }
}