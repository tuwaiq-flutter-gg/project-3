import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Best_Oferr extends StatelessWidget {
  const Best_Oferr({super.key, required this.pris, required this.img1, this.name_of_ofeer});
  final String pris;
  final String img1;
  final String? name_of_ofeer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 200,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffFFFFFF),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: ImageIcon(
                      AssetImage("Image/apple-logo.png"),
                      size: 12,
                    ),
                  ),
                  Text(
                    name_of_ofeer.toString(),
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
            Image.asset(
              img1.toString(),
              height: 130,
              width: 120,
            ),
            Text("$pris SAR"),
            Text("Order Now")
          ],
        ),
      ),
    );
  }
}
