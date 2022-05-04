import 'package:flutter/material.dart';
import 'package:resturant_application/Shared%20Preferences/SharedPreferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      String route = SharedPreferencesController().login
          ? '/HomeScreen'
          : '/WelcomeScreen';
      Navigator.pushReplacementNamed(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset('images/Group 728.png'),
          const SizedBox(height: 14.6),
          const Text(
            '2eat resturant',
            style: TextStyle(
              color: Color(0xFF08063A),
              fontFamily: 'Roboto',
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          Image.asset('images/Mask Group 10.png'),
        ],
      ),
    );
  }
}
