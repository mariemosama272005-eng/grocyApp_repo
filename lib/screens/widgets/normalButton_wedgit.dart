import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/normalButton_model.dart';

class NormalButtonWedgit extends StatelessWidget {
  final NormalbuttonModel button;
  const NormalButtonWedgit({required this.button,super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            decoration: BoxDecoration(
              color: Color(0xff53B175),
              borderRadius: BorderRadius.circular(19),
            ),
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Center(
              child: Text(
                button.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight(600),
                  color: Color(0xffFFF9FF),
                ),
              ),
            ),
                  );
  }
}