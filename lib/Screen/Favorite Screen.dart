import 'package:flutter/material.dart';

import '../Widget/ImageProfile.dart';
import '../Widget/Search.dart';
import '../Widget/Stars.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        children: [
          Card(
            margin: EdgeInsetsDirectional.only(start: 35, end: 35),
            child: ListTile(
              leading: Image.asset('images/beef burger big.png'),
              title: Column(
                children: [
                  const Text('Beef Burger'),
                  Row(
                    children: const [
                      Stars(),
                      Stars(),
                      Stars(),
                      Stars(),
                      Stars(),
                      Stars(),
                    ],
                  ),
                ],
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Color(0XFFFF3D00),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
