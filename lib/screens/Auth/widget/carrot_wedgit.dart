import 'package:flutter/material.dart';

class carrotImg extends StatelessWidget {
  const carrotImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 28.42),
        Center(
          child: Image.asset(
            "assets/images/carrot.png",
            width: 47.84358596801758,
            height: 55.63597869873047,
          ),
        ),
        SizedBox(height: 100.21),
      ],
    );
  }
}
