import 'package:flutter/material.dart';
class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Help',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
            color: Color(0xffFF3D00),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 90,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0XFF08063A),
          ),
        ),
        actions: [
          Image.asset('images/profile.png'),
        ],
      ),
    );
  }
}
