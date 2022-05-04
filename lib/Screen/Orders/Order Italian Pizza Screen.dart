import 'package:flutter/material.dart';
import 'package:resturant_application/Widget/OrderMeals.dart';

class OrderItalianPizzaScreen extends StatefulWidget {
  const OrderItalianPizzaScreen({Key? key}) : super(key: key);

  @override
  State<OrderItalianPizzaScreen> createState() =>
      _OrderItalianPizzaScreenState();
}

class _OrderItalianPizzaScreenState extends State<OrderItalianPizzaScreen> {
  @override
  Widget build(BuildContext context) {
    return const OrderMeals(
      image: 'images/italian pizza big.png',
      width: 72,
      height: 47,
      mealName: 'Italian Pizza',
      withs: 'with ketchup and Potato',
    );
  }
}
