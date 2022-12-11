import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammed_enjaz/Components/Doucment.dart';
import 'package:muhammed_enjaz/Controllers/mainController.dart';
import 'package:muhammed_enjaz/model/Constant/styling.dart' as mystyle;
import 'package:muhammed_enjaz/views/createDoc.dart';
import 'package:muhammed_enjaz/views/createiD.dart';
import 'package:muhammed_enjaz/views/report.dart';
import 'package:muhammed_enjaz/views/showIjraa.dart';

import '../Components/myText.dart';
import '../model/changable/doc.dart';

class showDoc extends StatelessWidget {
  const showDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:InkWell(
       onTap: () => Get.to(createDoc()),

          child: Icon(Icons.add))
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "البحث عن معاملات بالهويه",
                  style: mystyle.titleText(),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    myCustomTextField(
                      search: true,
                      text: "بحث بالهويه",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: Get.width * .2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: Color.fromARGB(57, 221, 218, 218),
                          border: Border.all(color: mystyle.text)),
                      child: Center(
                          child: Text(
                        "بحث",
                        style: mystyle.regularText(),
                      )),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () => {
                    if(mainController.accounts.value.length%2==1){
                    
                    mainController.addAccount(doc(docName: "شهادة ميلاد".obs,name: "محمد عبدالله".obs,from: "شهاب".obs, state: "يتم العمل عليها".obs, summary: "اخلص علينا".obs, type: "تحت الدراسه".obs))}
                    else{
                        mainController.addAccount(doc(docName: "شهادة ميلاد".obs,name: "محمد عبدالله".obs,from: "مكتب".obs, state: "يتم العمل عليها".obs, summary: "اخلص علينا".obs, type: "تحت الدراسه".obs))
                    }
                    
                    },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5, top: 10),
                        height: 40,
                        width: Get.width * .2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            color: Color.fromARGB(57, 221, 218, 218),
                            border: Border.all(color: mystyle.text)),
                        child: Center(child: Icon(Icons.add)),
                      ),


                        InkWell(
                                onTap: () => Get.to(createId()),

                          child: Container(
                          margin: EdgeInsets.only(right: 5, top: 10),
                          height: 40,
                          width: Get.width * .2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(21),
                              color: Color.fromARGB(57, 221, 218, 218),
                              border: Border.all(color: mystyle.text)),
                          child: Center(child: Icon(Icons.new_label)),
                                              ),
                        ),
                    ],
                  ),
                ),
                Container(
                    height: Get.height * .6,
                    child: Obx(
                      () => GridView.builder(
                          itemCount: mainController.accounts.value.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1, childAspectRatio: 1.4),
                          itemBuilder: (context, index) {
                            return InkWell(
                                onTap: () => Get.to(showIjraa()),
                              child: document(
                                date: mainController.accounts.value[index].date,
                                shehab: mainController
                                    .accounts.value[index].from.value,
                              name: mainController
                                    .accounts.value[index].name.value,     
                                    
                                      summary: mainController
                                    .accounts.value[index].summary.value,   
                                    
                                     state: mainController
                                    .accounts.value[index].type.value,  
                                    
                                        docName: mainController
                                    .accounts.value[index].docName.value,                   ),
                            );
                          }),
                    )),
              ],
            ),
          )
        ],
     
     
     
     
      ),
  
  
  floatingActionButton: InkWell(
      onTap: () => Get.to(report()),

child: Icon(Icons.document_scanner)),
    );
  }
}
