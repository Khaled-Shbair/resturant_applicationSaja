import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../Widget/ButtonLogin.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController _emailEditingController;
  late TextEditingController _passwordEditingController;
  late TextEditingController _userNameEditingController;
  late TapGestureRecognizer _tapGestureRecognizer;
  String? _erorrPassword;
  String? _erorrEmail;
  String? _erorrUserName;

  @override
  void initState() {
    super.initState();
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
    _userNameEditingController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = _navigatorToRegister;
  }

  void _navigatorToRegister() {
    Navigator.pushNamed(context, '/LoginScreen');
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    _emailEditingController.dispose();
    _passwordEditingController.dispose();
    _userNameEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Stack(
            children: [
              Image.asset('images/Mask Group 9.png'),
              Column(
                children: [
                  const SizedBox(height: 26),
                  Image.asset('images/Group 729.png'),
                  const SizedBox(height: 8),
                  const Text(
                    '2eat resturant',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(
                      start: 37,
                      end: 37,
                      top: 39,
                    ),
                    padding: const EdgeInsetsDirectional.only(
                      start: 20,
                      end: 14,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 31),
                        const Text(
                          'Sign up',
                          style: TextStyle(
                            color: Color(0XFFFF3D00),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 27),
                        TextField(
                          controller: _userNameEditingController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            fillColor: const Color(0XFFF4F3F3),
                            filled: true,
                            hintText: 'Username',
                            hintStyle: TextStyle(
                              color: Colors.deepOrange.shade100,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              size: 24,
                              color: Colors.deepOrange.shade100,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide.none,
                            ),
                            errorText: _erorrUserName,
                            errorStyle: const TextStyle(
                              fontSize: 12,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          controller: _emailEditingController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            errorText: _erorrEmail,
                            errorStyle: const TextStyle(
                              fontSize: 12,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 1,
                              ),
                            ),
                            fillColor: const Color(0XFFF4F3F3),
                            filled: true,
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: Colors.deepOrange.shade100,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              size: 24,
                              color: Colors.deepOrange.shade100,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          controller: _passwordEditingController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: const Color(0XFFF4F3F3),
                            filled: true,
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Colors.deepOrange.shade100,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              size: 24,
                              color: Colors.deepOrange.shade100,
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              size: 24,
                              color: Colors.deepOrange.shade100,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide.none,
                            ),
                            errorText: _erorrPassword,
                            errorStyle: const TextStyle(
                              fontSize: 12,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextButton(
                          onPressed: () => _performLogin(),
                          child: Container(
                            alignment: AlignmentDirectional.center,
                            height: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0XFFFF6A0D),
                                    Color(0XFFFF3D00),
                                  ],
                                )),
                            child: const Text(
                              'Sign up ',
                              style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          'or sign up with',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w100,
                            color: Color(0XFF08063A),
                          ),
                        ),
                        const SizedBox(height: 5),
                        const ButtonLogin(),
                        const SizedBox(height: 23),
                        RichText(
                          text:  TextSpan(
                            text: 'Have any account ? ',
                            style: const TextStyle(
                                color: Color(0XFF08063A),
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                            children: [
                              TextSpan(
                                recognizer: _tapGestureRecognizer,
                                text: 'Login',
                                style: const TextStyle(
                                    color: Color(0XFFFF3D00),
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _performLogin() {
    if (_checkLogin()) {
      _login();
    }
  }

  bool _checkLogin() {
    if (_emailEditingController.text.isNotEmpty &&
        _passwordEditingController.text.isNotEmpty &&
        _userNameEditingController.text.isNotEmpty) {
      _controlErorr();

      return true;
    } else {
      _controlErorr();
    }
    return false;
  }

  void _controlErorr() {
    setState(() {
      _erorrPassword =
          _passwordEditingController.text.isEmpty ? 'Enter Password' : null;
      _erorrEmail = _emailEditingController.text.isEmpty ? 'Enter Email' : null;
      _erorrUserName =
          _userNameEditingController.text.isEmpty ? 'Enter UserName' : null;
    });
  }

  void _login() {
    Navigator.pushReplacementNamed(context, '/HomeScreen');
  }
}
