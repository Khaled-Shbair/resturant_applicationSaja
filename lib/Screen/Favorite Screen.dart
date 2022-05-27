import 'package:flutter/material.dart';

import '../Widget/ImageProfile.dart';
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
        leadingWidth: 100,
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
        ],
      ),
    );
  }
}
