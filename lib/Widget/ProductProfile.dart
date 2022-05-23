import 'package:flutter/material.dart';
class ProductProfile extends StatelessWidget {
  const ProductProfile({
    required this.image,
    required this.nameMeal,
    Key? key,
  }) : super(key: key);
  final String image;
  final String nameMeal;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(
        bottom: 20,
      ),
      padding: const EdgeInsetsDirectional.only(
        start: 30,
        end: 30,
      ),
      height: 109,
      width: 354,
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(5),
          topLeft: Radius.circular(20),
          topRight: Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0XFF94A0DD).withAlpha(41),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            width: 82,
            height: 58,
          ),
           Text(
           nameMeal,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color(0xff08063A),
            ),
          ),
        ],
      ),
    );
  }
}
