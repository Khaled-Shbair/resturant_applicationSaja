import 'package:flutter/material.dart';

import '../../Widget/OrderMeals.dart';

class OrderBeefBurgerScreen extends StatefulWidget {
  const OrderBeefBurgerScreen({Key? key}) : super(key: key);

  @override
  State<OrderBeefBurgerScreen> createState() => _OrderBeefBurgerScreenState();
}

class _OrderBeefBurgerScreenState extends State<OrderBeefBurgerScreen> {
  @override
  Widget build(BuildContext context) {
    return const OrderMeals(
      image: 'images/beef burger big.png',
      height: 71,
      width: 66,
      mealName: 'Beef Burger',
      withs: 'with ketchup and Potato',
    );
  }
}
