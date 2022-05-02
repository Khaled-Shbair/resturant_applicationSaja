import 'package:flutter/material.dart';

class ForgetPasswordSentCodeScreen extends StatefulWidget {
  const ForgetPasswordSentCodeScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordSentCodeScreen> createState() =>
      _ForgetPasswordSentCodeScreenState();
}

class _ForgetPasswordSentCodeScreenState
    extends State<ForgetPasswordSentCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Stack(
            children: [
              Image.asset('images/Mask Group 9.png'),
              IconButton(
                padding: const EdgeInsetsDirectional.only(
                  start: 35,
                  top: 20,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 26),
                  Image.asset('images/Group 729.png'),
                  const SizedBox(height: 8),
                  const Text(
                    '2eat resturant',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(
                      start: 37,
                      end: 37,
                      top: 39,
                    ),
                    padding: const EdgeInsetsDirectional.only(
                      start: 38,
                      end: 38,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 31),
                        const Text(
                          '     Enter the code \n'
                          'to verify your phone',
                          style: TextStyle(
                            color: Color(0XFFFF3D00),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'We have sent you an SMS with a code \n       to the number or Email address',
                          style: TextStyle(
                            color: Colors.deepOrange.shade100,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 96),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Alter Soon...',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(height: 130),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Sent a new code',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 15,
                              color: Color(0XFF08063A),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 26),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
