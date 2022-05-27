import 'package:flutter/material.dart';

import 'Stars.dart';

class ProductFavorite extends StatelessWidget {
  const ProductFavorite({
    required this.image,
    required this.nameMeal,
    Key? key,
  }) : super(key: key);
  final String image;
  final String nameMeal;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsetsDirectional.only(
        bottom: 20,
      ),
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(5),
          topLeft: Radius.circular(20),
          topRight: Radius.circular(5),
        ),
      ),
      shadowColor: Colors.black54,
      elevation: 5,
      child: ListTile(
        leading: SizedBox(
          height: 80,
          width: 80,
          child: Image.asset(
            image,
          ),
        ),
        trailing: IconButton(
          padding: EdgeInsetsDirectional.zero,
          onPressed: () {},
          icon: const Icon(
            Icons.delete,
            color: Color(0XFFFF3D00),
          ),
        ),
        subtitle: Row(
          children: const [
            Stars(),
            Stars(),
            Stars(),
            Stars(),
            Stars(),
            Stars(),
          ],
        ),
        title: Text(
          nameMeal,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Color(0xff08063A),
          ),
        ),
        contentPadding: const EdgeInsetsDirectional.only(
          start: 25,
          end: 15,
          top: 10,
          bottom: 10,
        ),
      ),
    );
  }
}
