import 'package:flutter/material.dart';

class Emilpass extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  const Emilpass({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: emailController,
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "plz enter the email";
            }
            if (!value.contains("@")) {
              return "invalid Email";
            }
            return null;
          },
          decoration: const InputDecoration(
            labelText: "Email",
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight(600),
              color: Color(0xff7C7C7C),
            ),
            hintText: "imshuvo97@gmail.com",
            hintStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight(400),
              color: Color(0xff181725),
            ),
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E2E2)),
            ),
          ),
        ),
        SizedBox(height: 30),
        TextFormField(
          controller: passwordController,
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "plz enter the pass";
            }
            if (value.length < 6) {
              return "at least 6 caharacters password";
            }
            return null;
          },
          decoration: const InputDecoration(
            labelText: "Password",
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight(600),
              color: Color(0xff7C7C7C),
            ),
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E2E2)),
            ),
          ),
        ),
      ],
    );
  }
}
