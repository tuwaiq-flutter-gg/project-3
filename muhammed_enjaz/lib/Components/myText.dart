import 'package:flutter/material.dart';
class myCustomTextField extends StatefulWidget {
  String? text;
  bool? search;
  Color? inner;
   myCustomTextField({super.key, this.text, this.search}){
     if(inner==null){
       inner=Color.fromARGB(255, 231, 229, 229);
     }
   }

  @override
  State<myCustomTextField> createState() => _myCustomTextFieldState();
}

class _myCustomTextFieldState extends State<myCustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.68,
      height: 50,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: widget.inner,
        borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
       textAlign: TextAlign.end,
        maxLines: 20,
        
        decoration:  InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 10),
          prefixIcon: widget.search==true? 
         
       Icon(
            Icons.search,
          ):Text(""),
          enabledBorder:InputBorder.none,
      filled: true,
      fillColor: widget.inner,
      hintText: "${widget.text}",
        ),
      ),
    );





// TextFormField(
      
//   decoration:  InputDecoration(
//     // contentPadding: EdgeInsets.all(100),
//     filled: true,
//     fillColor: Color(0xffCADEDE),
//     border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(100),
//         borderSide: BorderSide(color:Color.fromARGB(255, 228, 20, 20), width: 5),
//     ),
//     labelText: '${widget.text}',
//   ),
// );
  }
}