import 'package:flutter/material.dart';

class MenuButtonSheet extends StatelessWidget {
  const MenuButtonSheet({
    required this.icon,
    required this.title,
    required this.function,
    this.bottom=0,
    this.top=0,
    this.start=0,
    Key? key,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final double bottom;
  final double top;
  final double start;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: function,
      color: Colors.transparent,
      disabledColor: Colors.red,
      padding:  EdgeInsetsDirectional.only(bottom: bottom,top: top,start: start),
      icon: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xff08063A),
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xFF08063A),
            ),
          ),
        ],
      ),
    );
  }
}
