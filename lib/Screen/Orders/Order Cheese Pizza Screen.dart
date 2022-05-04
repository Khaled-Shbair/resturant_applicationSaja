import 'package:flutter/material.dart';

import '../../Widget/OrderMeals.dart';

class OrderCheesePizzaScreen extends StatefulWidget {
  const OrderCheesePizzaScreen({Key? key}) : super(key: key);

  @override
  State<OrderCheesePizzaScreen> createState() => _OrderCheesePizzaScreenState();
}

class _OrderCheesePizzaScreenState extends State<OrderCheesePizzaScreen> {
  @override
  Widget build(BuildContext context) {
    return const OrderMeals(
      image: 'images/cheese pizza big.png',
      width: 78,
      height: 52,
      mealName: 'Cheese Pizza',
      withs: 'with ketchup and Potato',
    );
  }
}
