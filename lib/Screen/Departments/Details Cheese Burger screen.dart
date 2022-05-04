import 'package:flutter/material.dart';

import '../../Widget/Orders.dart';

class DetailsCheeseBurgerScreen extends StatefulWidget {
  const DetailsCheeseBurgerScreen({Key? key}) : super(key: key);

  @override
  State<DetailsCheeseBurgerScreen> createState() => _DetailsCheeseBurgerScreenState();
}

class _DetailsCheeseBurgerScreenState extends State<DetailsCheeseBurgerScreen> {
  @override
  Widget build(BuildContext context) {
    return Orders(
      image: 'images/cheese burger big.png',
      mealName: 'Cheese Burger',
      details: 'Cheeseburgers can include variations in structure, ingredients and composition. As with other hamburgers, a cheeseburger may include toppings such as lettuce, tomato, onion, pickles, bacon, mayonnaise, ketchup, and mustard. In fast food restaurants, the cheese used in cheeseburgers is usually processed cheese.',
      price: '\$25',
      function: (){},
    );
  }
}
