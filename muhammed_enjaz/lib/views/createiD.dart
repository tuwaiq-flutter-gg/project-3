
import 'package:flutter/material.dart';
import 'package:muhammed_enjaz/Components/myText.dart';
import 'package:muhammed_enjaz/Components/transparantButton.dart';

import '../model/Constant/styling.dart' as mystyle;

class createId extends StatelessWidget {
  const createId({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),


      body: ListView(
        children: [
    
         
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 100,),
                Text(" تسجيل مراجع", style: mystyle.titleText()),
                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                          Text(" رقم الهويه ", style: mystyle.headerText()),
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
                          Text(" الاسم كامل", style: mystyle.headerText()),
                         ConstrainedBox(
                           
                           constraints: BoxConstraints(
                             maxWidth: 150
                           ),
                           
                           child: myCustomTextField(text: "123123919",))
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40,),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                          Text(" العمر  ", style: mystyle.headerText()),
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
                          Text("  مكان الاقامه", style: mystyle.headerText()),
                         ConstrainedBox(
                           
                           constraints: BoxConstraints(
                             maxWidth: 150
                           ),
                           
                           child: myCustomTextField(text: "123123919",))
                      ],
                    ),
                  ],
                ),
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



       
        ],

      ),
    );
  }
}