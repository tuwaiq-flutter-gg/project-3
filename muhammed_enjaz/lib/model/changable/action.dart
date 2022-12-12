

import 'package:get/get.dart';

class actionTaken {
 
  var type="".obs;
  var note="".obs;
  var date;
actionTaken({required this.type,required this.note}){
date= DateTime.now().microsecondsSinceEpoch;
}
  
}