import 'package:flutter/material.dart';
import 'package:resturant_application/Widget/Orders.dart';

class DetailsPizzaMargheritaScreen extends StatefulWidget {
  const DetailsPizzaMargheritaScreen({Key? key}) : super(key: key);

  @override
  State<DetailsPizzaMargheritaScreen> createState() =>
      _DetailsPizzaMargheritaScreenState();
}

class _DetailsPizzaMargheritaScreenState
    extends State<DetailsPizzaMargheritaScreen> {
  @override
  Widget build(BuildContext context) {
    return Orders(
      image: 'images/pizza big .png',
      mealName: 'Pizza Margherita',
      details: 'Pizza Margherita (more commonly known in English as Margherita pizza) is a typical Neapolitan pizza, made with San Marzano tomatoes, mozzarella cheese, fresh basil, salt, and extra-virgin olive oil.',
      price: '\$26',
      function: () {},
    );
  }
}
