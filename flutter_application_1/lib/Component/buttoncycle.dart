// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class ListIcon extends StatefulWidget {
//   const ListIcon({super.key, this.image, this.title, required this.onPressed});
// final String? title,image;
// final Function() onPressed;
//   @override
//   State<ListIcon> createState() => _ListIconState();
// }

// class _ListIconState extends State<ListIcon> {
//   @override
//   Widget build(BuildContext context) {
   
//     return  Padding(
//            padding: const EdgeInsets.all(20.0),
//            child: Row(mainAxisAlignment: MainAxisAlignment.start,
//            crossAxisAlignment: CrossAxisAlignment.start,
//              children: [
//                Column(mainAxisAlignment: MainAxisAlignment.start,
//            crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                    Container(
//                      height: 60,width: 60,
//                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffECF0F1)),
//                      child: IconButton(onPressed: onPressed,icon: Icon(Icons.call)),
//                     //  child:  IconButton( icon: Icon(Icons.call),onPressed:() {Get.to(Contact()); } ),
//                    ),
//                    Padding(
//                      padding: const EdgeInsets.only(left:12.0,top: 2),
//                      child: Text(widget.title.toString(),style: TextStyle(fontSize: 14),),
//                    ),
//                   ],
//                )
//              ],
//            ),
//          )
// ;
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

class EleButtonCycle extends StatelessWidget {
  const EleButtonCycle({super.key, required this.title, required this.onPressed, required this.icon});
final String title;
final Icon icon;
final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    // return Center(
    //         child: ElevatedButton.icon(
    //           style: ElevatedButton.styleFrom(minimumSize: Size(20, 30),primary: green,
    //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),),
    //           onPressed: onPressed, 
    //           icon: icon,
    //           label: Text(title.toString(),style: TextStyle(color: white,fontSize: 12, ),),
    //         )
    //           );
  //  return Column(
  //   children: [
      
  //     Container(height: 30,width: 30,color: green,
  //       child: IconButton(onPressed: onPressed, icon: icon)),
  //     Text(title.toString(),style: TextStyle(color: green,fontSize: 12,),)
  //   ],
  //  )
  // return  Padding(
  //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
  //   child: Row(mainAxisAlignment: MainAxisAlignment.start,
  //            crossAxisAlignment: CrossAxisAlignment.start,
  //              children: [
  //                Column(mainAxisAlignment: MainAxisAlignment.start,
  //                crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                    Container(
  //                      height: 40,width: 40,
  //                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: green),
  //                      child: IconButton(onPressed: onPressed, icon: icon)
  //                    ),
  //                    Padding(
  //                      padding: const EdgeInsets.only(top: 2),
  //                      child: Text(title.toString(),style: TextStyle(color: greendark,fontSize: 12,),)
  //                    ),
  //                   ],
  //                )
  //              ],
  //            ),
  // )
 return Padding(
   padding: const EdgeInsets.symmetric(horizontal: 10.0),
   child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: green,
            ),
            child: IconButton(onPressed: onPressed, icon: icon)
          ),
          SizedBox(
            height: 5,
          ),
          Text(title)
        ],
      ),
 );
   

  }
}