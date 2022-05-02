import 'package:flutter/material.dart';

import 'Screen/Departments Screen.dart';
import 'Screen/Forget Password Screen.dart';
import 'Screen/Forget Password Sent code.dart';
import 'Screen/Forget Password change password screen.dart';
import 'Screen/Home Screen.dart';
import 'Screen/Log in Screen.dart';
import 'Screen/Sign up Screen.dart';
import 'Screen/lunchWelcomeScreen.dart';
import 'Screen/splash screen.dart';
import 'Screen/welcome screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/DepartmentScreen',
      routes: {
        '/SplashScreen': (context) => const SplashScreen(),
        '/WelcomeScreen': (context) => const WelcomeScreen(),
        '/LunchWelcomeScreen': (context) => const LunchWelcomeScreen(),
        '/SignUpScreen': (context) => const SignUpScreen(),
        '/LoginScreen': (context) => const LoginScreen(),
        '/ForgetPasswordScreen': (context) => const ForgetPasswordScreen(),
        '/ForgetPasswordSentCodeScreen': (context) => const ForgetPasswordSentCodeScreen(),
        '/ForgetPasswordChangePasswordScreen': (context) => const ForgetPasswordChangePasswordScreen(),
        '/HomeScreen': (context) => const HomeScreen(),
        '/DepartmentScreen': (context) => const DepartmentScreen(),
      },
    );
  }
}
