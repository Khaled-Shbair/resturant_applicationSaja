import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../Shared Preferences/SharedPreferences.dart';
import '../Widget/ButtonLogin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailEditingController;
  late TextEditingController _passwordEditingController;
  late TapGestureRecognizer _tapGestureRecognizer;
  String? _erorrPassword;
  String? _erorrEmail;

  @override
  void initState() {
    super.initState();
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = _navigatorToRegister;
  }

  void _navigatorToRegister() {
    Navigator.pushNamed(context, '/SignUpScreen');
  }

  @override
  void dispose() {
    _emailEditingController.dispose();
    _passwordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Stack(
            children: [
              Image.asset('images/Mask Group 9.png'),
              IconButton(
                padding: const EdgeInsetsDirectional.only(
                  start: 35,
                  top: 20,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(height: 31),
                        const Center(
                          child: Text(
                            'Log in',
                            style: TextStyle(
                              color: Color(0XFFFF3D00),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 27),
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
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, '/ForgetPasswordScreen');
                          },
                          child: const Text(
                            'Forget Password?',
                            style: TextStyle(
                              color: Color(0XFFFF3D00),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
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
                              'Log in',
                              style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Center(
                          child: Text(
                            'or sign up with',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w100,
                              color: Color(0XFF08063A),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        const ButtonLogin(),
                        const SizedBox(height: 40),
                        Center(
                          child: RichText(
                            text: TextSpan(
                              text: 'Don\'t Have any account ? ',
                              style: const TextStyle(
                                  color: Color(0XFF08063A),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                  recognizer: _tapGestureRecognizer,
                                  text: 'Sign up',
                                  style: const TextStyle(
                                      color: Color(0XFFFF3D00),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
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
        _passwordEditingController.text.isNotEmpty) {
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
    });
  }

  void _login() async {
    await SharedPreferencesController().save(
        email: _emailEditingController.text,
        password: _passwordEditingController.text);
    Navigator.pushReplacementNamed(context, '/HomeScreen');
  }
}
