import 'package:flutter/material.dart';

class OrderMethod extends StatelessWidget {
  const OrderMethod({
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Color(0xff08063A),
          ),
        ),
        Container(
          height: 24,
          width: 117,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 3),
                  blurRadius: 6,
                  color: Colors.black.withAlpha(41)),
            ],
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              // fillColor: Colors.white,
              // filled: true,
            ),
          ),
        ),
      ],
    );
  }
}
