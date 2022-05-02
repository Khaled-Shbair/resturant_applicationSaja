import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: AlignmentDirectional.centerStart,
            height: 41,
            width: 50,
            decoration: BoxDecoration(
                color: const Color(0XFFE6E6E6),
                borderRadius: BorderRadius.circular(50)),
            child: Row(
              children: [
                const SizedBox(width: 7),
                Image.asset('images/facebook.png'),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Facebook',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0XFF08063A),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Container(
            alignment: AlignmentDirectional.centerStart,
            height: 41,
            width: 50,
            decoration: BoxDecoration(
                color: const Color(0XFFE6E6E6),
                borderRadius: BorderRadius.circular(50)),
            child: Row(
              children: [
                const SizedBox(width: 7),
                Image.asset('images/google.png'),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Google',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0XFF08063A),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
