import 'package:flutter/material.dart';

class ImageProfile extends StatelessWidget {
  const ImageProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Image.asset('images/profile.png'),
      iconSize: 100,

    );
  }
}
