import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muhammed_enjaz/Components/timline.dart';

import '../Components/myText.dart';
import '../Components/transparantButton.dart';
import '../model/Constant/styling.dart' as mystyle;

class createDoc extends StatelessWidget {
  const createDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body:  ListView(
        children: [
    
         
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.end,
              children: [
             
                Text(" انشاء معامله", style: mystyle.titleText()),
                SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                          Text(" نوع المعامله ", style: mystyle.headerText()),
                         ConstrainedBox(
                           
                           constraints: BoxConstraints(
                             maxWidth: 150
                           ),
                           
                           child: myCustomTextField(text: "١١٠٢٠٣٢٢٣",))
                      ],
                    ),
                    SizedBox(width: 10,),
                  Column(
                      children: [
                          Text(" الحاله", style: mystyle.headerText()),
                         ConstrainedBox(
                           
                           constraints: BoxConstraints(
                             maxWidth: 150
                           ),
                           
                           child: myCustomTextField(text: "123123919",))
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   Column(
                      children: [
                          Text("  المسؤول ", style: mystyle.headerText()),
                         ConstrainedBox(
                           
                           constraints: BoxConstraints(
                             maxWidth: 150
                           ),
                           
                           child: myCustomTextField(text: "123123919",))
                      ],
                    ),
                  Column(
                      children: [
                          Text("  وارده من ", style: mystyle.headerText()),
                         ConstrainedBox(
                           
                           constraints: BoxConstraints(
                             maxWidth: 150
                           ),
                           
                           child: myCustomTextField(text: "123123919",))
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                  Text(" ملخص   ", style: mystyle.headerText()),
                         ConstrainedBox(
                           
                           constraints: BoxConstraints(
                        minHeight: 200
                           ),
                           
                           child: myCustomTextField(text: "١١٠٢٠٣٢٢٣",)),
                SizedBox(height: 30,),

                Container(
                  alignment: Alignment.center,
                  child: transparentButton(child: Padding(
                    padding: const EdgeInsets.only(left:40.0, right: 40),
                    child: Text("انشاء", style: mystyle.regularText(),),
                  )),
                )
             
              ],
            ),
          ),
          

        timeline(state:0,)
       
        ],

      ),
    );
  }
}