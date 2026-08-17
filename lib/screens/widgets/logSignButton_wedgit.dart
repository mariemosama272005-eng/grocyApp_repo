import 'package:flutter/material.dart';

class Logsignbutton extends StatelessWidget {
  String buttonText;
  VoidCallback onPressed;

  Logsignbutton(this.buttonText, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff53B175),
          borderRadius: BorderRadius.circular(19),
        ),
        padding: EdgeInsets.symmetric(vertical: 25),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight(600),
              color: Color(0xffFFF9FF),
            ),
          ),
        ),
      ),
    );
  }
}
