import 'package:get/get.dart';
import 'package:muhammed_enjaz/model/changable/action.dart';

class doc{
  var docName="".obs;
   var name="".obs;
   var from="".obs;
    var type="".obs;
  var summary="".obs;
    var state="".obs;
    RxList actions=[].obs;
  dynamic? date;
doc({required this.from,required this.state,required this.docName,required this.name,required this.summary,required this.type}){
date=DateTime.now().microsecondsSinceEpoch;
}
  addAction({actionTaken? a}){
    actions.add(a);
  }
}