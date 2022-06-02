import 'package:flutter/material.dart';

class responsivebutton extends StatelessWidget {
  bool? isresponsive;
  double? width;
  String? text;
  responsivebutton({Key? key, this.isresponsive = false, this.width, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.purple.shade300),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("img/button-one.png"),
        ],
      ),
    );
  }
}
