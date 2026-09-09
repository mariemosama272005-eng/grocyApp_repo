import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/button_model.dart';

class ButtonWedgit extends StatelessWidget {
  final ButtonModel buttom;
  final VoidCallback onPressed;

  const ButtonWedgit( this.onPressed, {required this.buttom,super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff53B175),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Center(
            child: Text(
              buttom.buttonText,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight(600),
                color: Color(0xffFFF9FF),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
