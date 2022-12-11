
import 'package:flutter/material.dart';

class ListIcons extends StatefulWidget {
  const ListIcons({super.key, this.image, this.title});
final String? title,image;
  @override
  State<ListIcons> createState() => _ListIconsState();
}

class _ListIconsState extends State<ListIcons> {
  @override
  Widget build(BuildContext context) {
   
    return  Padding(
           padding: const EdgeInsets.all(20.0),
           child: Row(mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Column(mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Container(
                     height: 60,width: 60,
                    //  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffECF0F1)),
                     child: Image.asset(widget.image.toString()),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:12.0,top: 2),
                     child: Text(widget.title.toString(),style: TextStyle(fontSize: 12),),
                   ),
                  ],
               )
             ],
           ),
         )
;
  }
}