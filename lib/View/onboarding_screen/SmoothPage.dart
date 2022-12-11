
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:teatime/constant.dart';

class SmoothPage extends StatelessWidget {
  const SmoothPage({
    super.key,
    required PageController controller,
    required this.LastPage,
  }) : _controller = controller;

  final PageController _controller;
  final bool LastPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SmoothPageIndicator(
            effect: ExpandingDotsEffect(
              dotHeight: 10,
              dotWidth: 10,
              activeDotColor: greenColor,
              dotColor: lightColor,
            ),
            controller: _controller,
            count: 2),
        LastPage
            ? GestureDetector(
                onTap: () {
                 Get.toNamed("/SignUp");
                },
                child: Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 35,
                ),
              )
            : GestureDetector(
                onTap: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Icon(
                  Icons.arrow_circle_right_outlined,
                  color: greenColor,
                  size: 35,
                ))
      ],
    );
  }
}
