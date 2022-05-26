import 'package:flutter/material.dart';

import '../../Widget/Orders.dart';

class DetailsCheesePizzaScreen extends StatefulWidget {
  const DetailsCheesePizzaScreen({Key? key}) : super(key: key);

  @override
  State<DetailsCheesePizzaScreen> createState() => _DetailsCheesePizzaScreenState();
}

class _DetailsCheesePizzaScreenState extends State<DetailsCheesePizzaScreen> {
  @override
  Widget build(BuildContext context) {
    return Orders(
      image: 'images/cheese pizza big.png',
      mealName: 'Cheese Pizza',
      details:
          'pizza sauce.\n8 oz. provolone cheese, thinly sliced.\n2 c. shredded low-moisture whole-milk mozzarella cheese.\n6 tbsp. grated parmesan cheese.',
      price: '\$20',
      function: () {
        Navigator.pushNamed(context, '/OrderCheesePizzaScreen');
      },
    );
  }
}
