import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/login_screen.dart';
import 'package:flutter_application_2/screens/widgets/carrot_wedgit.dart';
import 'package:flutter_application_2/screens/widgets/logDa_wedgit.dart';
import 'package:flutter_application_2/screens/widgets/emilPass_wedgit.dart';
import 'package:flutter_application_2/screens/widgets/logSignButton_wedgit.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFCFC),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),

            child: Form(
              key: _formKey,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  carrotImg(),

                  LogData(
                    "Sign up",
                    "Enter your credentials to continue",
                  ),

                  SizedBox(height: 40),

                  // Username
                  TextFormField(
                    controller: _usernameController,

                    onTapOutside: (event) {
                      FocusScope.of(context).unfocus();
                    },

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "plz enter the username";
                      }

                      if (value.length < 3) {
                        return "invalid username";
                      }

                      return null;
                    },

                    decoration: InputDecoration(
                      labelText: "Username",
                      labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff7C7C7C),
                      ),
                      hintText: "Afsar Hossen Shuvo",
                      hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff181725),
                      ),
                      border: UnderlineInputBorder(),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffE2E2E2),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  // Email & Password
                  Emilpass(
                    emailController: _emailController,
                    passwordController: _passwordController,
                  ),

                  SizedBox(height: 20),

                  Row(
                    children: [
                      Text(
                        "By continuing you agree to our ",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.05,
                          color: Color(0xff181725),
                        ),
                      ),

                      Text(
                        "Terms of Service and Privacy Policy.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.05,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30.03),

                  // Button
                  Logsignbutton(
                    "Sign Up",
                    () {
                      if (_formKey.currentState!.validate()) {
                        print(_usernameController.text);
                        print(_emailController.text);
                        print(_passwordController.text);
                      }
                    },
                  ),

                  SizedBox(height: 25),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.05,
                          color: Color(0xff181725),
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },

                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.05,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}