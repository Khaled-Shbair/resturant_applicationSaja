import 'package:flutter/material.dart';

import '../Widget/ImageProfile.dart';
import '../Widget/ProductFavorite.dart';
import '../Widget/Search.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0XFF08063A),
          ),
        ),
        title: const Text(
          'Favorite',
          style: TextStyle(
            color: Color(0XFFFF3D00),
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
        leadingWidth: 90,
        actions: const [
          ImageProfile(),
        ],
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.only(
          start: 37,
          end: 37,
        ),
        children: const [
          Search(),
          SizedBox(height: 50),
          ProductFavorite(
            image: 'images/chicken burgerBig.png',
            nameMeal: 'Chicken Burger',
          ),
          ProductFavorite(
            image: 'images/beef burger big.png',
            nameMeal: 'Beef Burger',
          ),
          ProductFavorite(
            image: 'images/italian pizza big.png',
            nameMeal: 'Italian Pizza',
          ),
          ProductFavorite(
            image: 'images/cheese pizza big.png',
            nameMeal: 'Cheese Pizza',
          ),
          ProductFavorite(
            image: 'images/cheese burger big.png',
            nameMeal: 'Cheese Burger',
          ),
        ],
      ),
    );
  }
}
