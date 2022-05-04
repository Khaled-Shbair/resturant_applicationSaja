import 'package:flutter/material.dart';

import '../../Widget/OrderMeals.dart';
class OrderCheeseBurgerScreen extends StatefulWidget {
  const OrderCheeseBurgerScreen({Key? key}) : super(key: key);

  @override
  State<OrderCheeseBurgerScreen> createState() => _OrderCheeseBurgerScreenState();
}

class _OrderCheeseBurgerScreenState extends State<OrderCheeseBurgerScreen> {
  @override
  Widget build(BuildContext context) {
    return const OrderMeals(
      image: 'images/cheese burger big.png',
      width: 66,
      height: 46,
      mealName: 'Cheese Burger',
      withs: 'with ketchup and Potato',
    );
  }
}
