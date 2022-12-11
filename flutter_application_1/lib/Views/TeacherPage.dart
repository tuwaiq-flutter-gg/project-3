import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Component/Text.dart';
import 'package:flutter_application_1/HomePage.dart';
import 'package:flutter_application_1/Views/Home.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

class Teacher extends StatefulWidget {
  const Teacher({super.key});

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
   // save data
  final List<String> _todoList = <String>[];
  // text field
  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(backgroundColor: Colors.white, elevation: 0,centerTitle: true,
        leading:  IconButton(icon: Icon(Icons.arrow_back_ios_rounded),color: Colors.black, onPressed: () 
        {Get.to(Home());},),
      title:Text("معلمة",style: TextStyle(color: greendark,fontSize: 20,fontWeight: FontWeight.bold),) ,),
       body: ListView(children: _getItems()),
      // add items to the to-do list
      floatingActionButton: FloatingActionButton(
          onPressed: () => _displayDialog(context),
          tooltip: 'إضافة مهمه',
          child: Icon(Icons.add),backgroundColor: green),
    );
  }

  void _addTodoItem(String title) {
    // Wrapping it inside a set state will notify
    // the app that the state has changed
    setState(() {
      _todoList.add(title);
    });
    _textFieldController.clear();
  }
void _removeTodoItem(String title) {
    // Wrapping it inside a set state will notify
    // the app that the state has changed
    setState(() {
      _todoList.remove(title);
    });
    _textFieldController.clear();
  }

  // this Generate list of item widgets
  Widget _buildTodoItem(String title) {
    return ListTile(title: Text(title));
  }

  // display a dialog for the user to enter items
  Future<Future> _displayDialog(BuildContext context) async {
    // alter the app state to show a dialog
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('إضافة مهام للقائمة',textDirection: TextDirection.rtl,),
          content: TextField(
            controller: _textFieldController,
            decoration: const InputDecoration(hintText: 'إضافة المهام',hintTextDirection: TextDirection.rtl,),
          ),
          actions: <Widget>[
            // add button
            ElevatedButton(
              child: const Text('إضافة'),
              onPressed: () {
                Navigator.of(context).pop();
                _addTodoItem(_textFieldController.text);
              },style: ElevatedButton.styleFrom(minimumSize: Size(100, 50),primary: green,)
            ),
            SizedBox(height: 15,),
            // Cancel button
            ElevatedButton(
              child: const Text('حذف المهمة'),
              onPressed: () {
                Navigator.of(context).pop();
                _removeTodoItem(_textFieldController.text);
              },style: ElevatedButton.styleFrom(minimumSize: Size(100, 50),primary: green,)
            )
          ],
        );
      } 
    );
  }

  // iterates through our todo list title
  List<Widget> _getItems() {
    final List<Widget> _todoWidgets = <Widget>[];
    for (String title in _todoList) {
      _todoWidgets.add(_buildTodoItem(title));
    }
    return _todoWidgets;
  }
}
      // body: ListView(
      //   children: [
      //     textenter(titel: "اسم المعلمة"),
      //     textenter(titel: "سارة"),
      //     Container(
            
            
      //     )
      //   ],
      // )
//     );
//   }
// }