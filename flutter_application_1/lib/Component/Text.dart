import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/main.dart';

class textenter extends StatelessWidget {
  const textenter({super.key, this.titel});
final String? titel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Align(alignment: Alignment.centerRight,
        child: Text(titel.toString(),style: TextStyle(fontSize: 20,color: greendark),)),
    );
  }
}