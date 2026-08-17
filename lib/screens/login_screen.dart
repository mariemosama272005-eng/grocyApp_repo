import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/widgets/carrot_wedgit.dart';

import 'package:flutter_application_2/screens/widgets/logDa_wedgit.dart';
import 'package:flutter_application_2/screens/widgets/logSignButton_wedgit.dart';
import 'package:flutter_application_2/screens/signUp_screen.dart';
import 'package:flutter_application_2/screens/widgets/emilPass_wedgit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFCFC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              carrotImg(),
              LogData("Loging", "Enter your emails and password"),
              SizedBox(height: 40),
              Form(key: _formKey,
              child: Column(
                children: [
              Emilpass(
                emailController: _emailController,
                passwordController: _passwordController,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(fontWeight: FontWeight(400)),
                ),
              ),
              SizedBox(height: 30),
              Logsignbutton("Login", () {
                if (_formKey.currentState!.validate()) {
                  print(_emailController.text);
                  print(_passwordController.text);
                }
              }),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: TextStyle(
                      fontWeight: FontWeight(600),
                      letterSpacing: 0.05,
                      color: Color(0xff181725),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },

                    child: Text(
                      "sign up",
                      style: TextStyle(
                        fontWeight: FontWeight(600),
                        letterSpacing: 0.05,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
                ],
              ),
            
              )
            ],
          ),
        ),
      ),
    );
  }
}
