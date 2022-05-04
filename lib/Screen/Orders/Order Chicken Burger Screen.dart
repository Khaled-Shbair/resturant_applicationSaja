import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widget/OrderMeals.dart';

class OrderChickenBurgerScreen extends StatefulWidget {
  const OrderChickenBurgerScreen({Key? key}) : super(key: key);

  @override
  State<OrderChickenBurgerScreen> createState() =>
      _OrderChickenBurgerScreenState();
}

class _OrderChickenBurgerScreenState extends State<OrderChickenBurgerScreen> {
  @override
  Widget build(BuildContext context) {
    return const OrderMeals(
      image: 'images/chicken burgerBig.png',
      mealName: 'Chicken Burger',
      withs: 'with ketchup and Potato',
    );
  }
}
