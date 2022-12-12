import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammed_enjaz/model/changable/account.dart';
import 'package:muhammed_enjaz/model/changable/doc.dart';

class mainController{
static RxList accounts=[doc(docName: "شهادة ميلاد".obs,name: "محمد عبدالله".obs,from: "شهاب".obs, state: "يتم العمل عليها".obs, summary: "اخلص علينا".obs, type: "تحت الدراسه".obs)].obs;


static addAccount(doc ac){
accounts.add(ac);
}
}