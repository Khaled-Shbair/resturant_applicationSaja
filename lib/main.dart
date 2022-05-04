import 'package:flutter/material.dart';


import 'Screen/Departments/Departments Screen.dart';
import 'Screen/Departments/Details Cheese Pizza screen.dart';
import 'Screen/Departments/Details Chicken Burger screen.dart';
import 'Screen/Departments/Details Italian Pizza screen.dart';
import 'Screen/Login/Forget Password Screen.dart';
import 'Screen/Login/Forget Password Sent code.dart';
import 'Screen/Login/Forget Password change password screen.dart';
import 'Screen/Home Screen.dart';
import 'Screen/Login/Log in Screen.dart';
import 'Screen/Orders/Order Beef Burger Screen.dart';
import 'Screen/Orders/Order Cheese Burger Screen.dart';

import 'Screen/Orders/Order Cheese Pizza Screen.dart';
import 'Screen/Orders/Order Chicken Burger Screen.dart';
import 'Screen/Orders/Order Italian Pizza Screen.dart';
import 'Screen/Orders/Order Pizza Margherita Screen.dart';
import 'Screen/Login/Sign up Screen.dart';
import 'Screen/Lunch Screen/lunchWelcomeScreen.dart';
import 'Screen/Departments/Details  Beef Burger screen.dart';
import 'Screen/Departments/Details Cheese Burger screen.dart';

import 'Screen/Departments/Details Pizza Margherita screen.dart';
import 'Screen/Lunch Screen/splash screen.dart';
import 'Screen/Lunch Screen/welcome screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/OrderCheeseBurgerScreen',
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
        '/DetailsChickenBurgerScreen': (context) => const DetailsChickenBurgerScreen(),
        '/DetailsBeefBurgerScreen': (context) => const DetailsBeefBurgerScreen(),
        '/DetailsItalianPizzaScreen': (context) => const DetailsItalianPizzaScreen(),
        '/DetailsCheesePizzaScreen': (context) => const DetailsCheesePizzaScreen(),
        '/DetailsCheeseBurgerScreen': (context) => const DetailsCheeseBurgerScreen(),
        '/DetailsPizzaMargheritaScreen': (context) => const DetailsPizzaMargheritaScreen(),
        '/OrderChickenBurgerScreen': (context) => const OrderChickenBurgerScreen(),
        '/OrderBeefBurgerScreen': (context) => const OrderBeefBurgerScreen(),
        '/OrderItalianPizzaScreen': (context) => const OrderItalianPizzaScreen(),
        '/OrderCheesePizzaScreen': (context) => const OrderCheesePizzaScreen(),
        '/OrderCheeseBurgerScreen': (context) => const OrderCheeseBurgerScreen(),
        '/OrderPizzaMargheritaScreen': (context) => const OrderPizzaMargheritaScreen(),
      },
    );
  }
}
