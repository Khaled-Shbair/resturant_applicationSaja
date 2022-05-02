import 'package:flutter/material.dart';

class ForgetPasswordChangePasswordScreen extends StatefulWidget {
  const ForgetPasswordChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordChangePasswordScreen> createState() =>
      _ForgetPasswordChangePasswordScreenState();
}

class _ForgetPasswordChangePasswordScreenState
    extends State<ForgetPasswordChangePasswordScreen> {
  late TextEditingController _newPasswordEditingController;
  late TextEditingController _phoneEditingController;
  String? _erorrPhone;
  String? _erorrEmail;

  @override
  void initState() {
    super.initState();
    _newPasswordEditingController = TextEditingController();
    _phoneEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _newPasswordEditingController.dispose();
    _phoneEditingController.dispose();
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
                      children: [
                        const SizedBox(height: 31),
                        const Text(
                          'Change the Password',
                          style: TextStyle(
                            color: Color(0XFFFF3D00),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 50),
                        TextField(
                          controller: _newPasswordEditingController,
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
                            hintText: 'New Password',
                            hintStyle: TextStyle(
                              color: Colors.deepOrange.shade100,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye_sharp,
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
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _phoneEditingController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            fillColor: const Color(0XFFF4F3F3),
                            filled: true,
                            hintText: ' Confirm New Password',
                            hintStyle: TextStyle(
                              color: Colors.deepOrange.shade100,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            prefixIcon: Icon(
                              Icons.lock_open,
                              size: 24,
                              color: Colors.deepOrange.shade100,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide.none,
                            ),
                            errorText: _erorrPhone,
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
                        const SizedBox(height: 20),
                        TextButton(
                          onPressed: () {},
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
                              'Reset password',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 100),
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
    if (_newPasswordEditingController.text.isNotEmpty ||
        _phoneEditingController.text.isNotEmpty) {
      _controlErorr();

      return true;
    } else {
      _controlErorr();
    }
    return false;
  }

  void _controlErorr() {
    setState(() {
      _erorrPhone =
          _phoneEditingController.text.isEmpty ? 'Enter Password' : null;
      _erorrEmail =
          _newPasswordEditingController.text.isEmpty ? 'Enter Email' : null;
    });
  }

  void _login() {
    Navigator.pushReplacementNamed(context, '/ForgetPasswordSentCodeScreen');
  }
}
