import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogData extends StatelessWidget {
  String pTitle;
  String pSubTitle;
  LogData(this.pTitle, this.pSubTitle);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          pTitle,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight(600),
            color: Color(0xff181725),
          ),
        ),

        Text(
          pSubTitle,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight(400),
            color: Color(0xff7C7C7C),
          ),
        ),
      ],
    );
  }
}
