import 'package:flutter/material.dart';

class LunchWelcomeScreen extends StatefulWidget {
  const LunchWelcomeScreen({Key? key}) : super(key: key);

  @override
  State<LunchWelcomeScreen> createState() => _LunchWelcomeScreenState();
}

class _LunchWelcomeScreenState extends State<LunchWelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 1),
      () => Navigator.pushReplacementNamed(context, '/LoginScreen'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.topCenter,
          end: AlignmentDirectional.bottomCenter,
          colors: [
            Color(0XFFFF3D00),
            Color(0XFFFF6A0D),
          ],
        ),
      ),
    );
  }
}
