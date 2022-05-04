import 'package:flutter/material.dart';

import '../../Widget/OrderMeals.dart';

class OrderPizzaMargheritaScreen extends StatefulWidget {
  const OrderPizzaMargheritaScreen({Key? key}) : super(key: key);

  @override
  State<OrderPizzaMargheritaScreen> createState() =>
      _OrderPizzaMargheritaScreenState();
}

class _OrderPizzaMargheritaScreenState
    extends State<OrderPizzaMargheritaScreen> {
  @override
  Widget build(BuildContext context) {
    return const OrderMeals(
      image: 'images/pizza big .png',
      width: 64,
      height: 64,
      mealName: 'Pizza Margherita',
      withs: 'with ketchup and Potato',
    );
  }
}
