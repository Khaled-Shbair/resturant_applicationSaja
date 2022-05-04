import 'package:flutter/material.dart';

import '../../Widget/Orders.dart';

class DetailsChickenBurgerScreen extends StatefulWidget {
  const DetailsChickenBurgerScreen({Key? key}) : super(key: key);

  @override
  State<DetailsChickenBurgerScreen> createState() =>
      _DetailsChickenBurgerScreenState();
}

class _DetailsChickenBurgerScreenState extends State<DetailsChickenBurgerScreen> {
  @override
  Widget build(BuildContext context) {
    return Orders(
      image: 'images/chicken burgerBig.png',
      mealName: 'Chicken Burger',
      details: 'Mix ground chicken, 1/4 cup bread\ncrumbs, onion, egg, garlic, salt,\nand black pepper in a bowl.\nMoisten hands and shape chicken\nmixture, 2 tablespoons at a time,\ninto flat, oval-shaped patties.',
      price: '\$15',
      function: () {},
    );
  }
}
