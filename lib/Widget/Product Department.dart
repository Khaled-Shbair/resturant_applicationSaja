import 'package:flutter/material.dart';

import 'Stars.dart';

class Product extends StatelessWidget {
  const Product({
    required this.image,
    required this.title,
    required this.price,
    required this.function,
    Key? key,
  }) : super(key: key);
  final String image;
  final String title;
  final String price;
final Function () function;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: SizedBox(
        height: 300,
        width: 185,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('images/heart.png'),
                      const SizedBox(width: 11),
                    ],
                  ),
                  Image.asset(
                    image,
                    width: 185,
                    height: 100,
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.zero,
              padding: EdgeInsetsDirectional.zero,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 20,
                  top: 10,
                  bottom: 6,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFF08063A),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Stars(),
                        Stars(),
                        Stars(),
                        Stars(),
                        Stars(),
                        Stars(),
                        Icon(Icons.star_border_outlined,
                            color: Color(0xFFFFED00), size: 13),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                      price,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF3D00),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.transparent,
              elevation: 0,
              margin: EdgeInsetsDirectional.zero,
              child: ElevatedButton(
                onPressed: function,
                child: const Text(
                  'order now',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsetsDirectional.zero,
                  primary: const Color(0xFFFF3D00),
                  minimumSize: const Size(134, 38),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
