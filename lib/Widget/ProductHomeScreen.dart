import 'package:flutter/material.dart';

import 'Stars.dart';

class ProductHomeScreen extends StatelessWidget {
  const ProductHomeScreen({
    required this.image,
    required this.title,
    required this.price,
    required this.selected,
    Key? key,
  }) : super(key: key);
  final String image;
  final String title;
  final String price;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: SizedBox(
        height: 300,
        width: 162,
        child: Column(
          children: [
            Container(
              child: Image.asset(
                image,
                width: 162,
                height: 137,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  begin: AlignmentDirectional.topCenter,
                  end: AlignmentDirectional.bottomCenter,
                  colors: [
                    Color(0XFFFF3D00),
                    Color(0XFFFF6A0D),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsetsDirectional.zero,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 11,
                  top: 10,
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
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
