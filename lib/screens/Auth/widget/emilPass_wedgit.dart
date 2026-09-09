import 'package:flutter/material.dart';

class Emilpass extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  
  const Emilpass({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  State<Emilpass> createState() => _EmilpassState();
}

class _EmilpassState extends State<Emilpass> {
  // متغير للتحكم في إظهار أو إخفاء كلمة المرور
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: widget.emailController,
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
              fontWeight: FontWeight.w600,
              color: Color(0xff7C7C7C),
            ),
            hintText: "imshuvo97@gmail.com",
            hintStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Color(0xff181725),
            ),
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E2E2)),
            ),
          ),
        ),
        const SizedBox(height: 30),
        TextFormField(
          controller: widget.passwordController,
          obscureText: _obscurePassword, 
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
          decoration: InputDecoration(
            labelText: "Password",
            labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff7C7C7C),
            ),
            border: const UnderlineInputBorder(),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E2E2)),
            ),
           
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility_off : Icons.visibility,
                color: const Color(0xff7C7C7C),
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}