import 'package:flutter/material.dart';

class TabPageWelcomeScreen extends StatelessWidget {
  const TabPageWelcomeScreen({
    required this.selected,
    required this.full,
    required this.border,
    Key? key,
  }) : super(key: key);

  final bool selected;
final Color full;
final Color border;
  @override
  Widget build(BuildContext context) {
    return TabPageSelectorIndicator(
      backgroundColor:
          selected ?  full : border,
      borderColor: full,
      size: 10,
    );
  }
}
