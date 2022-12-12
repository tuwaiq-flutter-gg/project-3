import 'package:get/get.dart';

import 'doc.dart';

class account{


  RxList? docs=[].obs;
  final String name;
  final int id;
  account( {required this.id, this.docs, required this.name});

addDoc(doc d){
docs?.add(d);
}
}