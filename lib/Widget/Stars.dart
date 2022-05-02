import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  const Stars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.star,
      color: Color(0xFFFFED00),
      size: 13,
    );
  }
}
