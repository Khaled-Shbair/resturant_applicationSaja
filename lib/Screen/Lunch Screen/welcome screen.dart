import 'package:flutter/material.dart';

import '../../Widget/TabPageWelcomeScreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 54),
          const Text(
            'Lets get started',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: Color(0XFFFF3D00),
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                Column(
                  children: [
                    const SizedBox(height: 84),
                    Image.asset('images/undraw_online_groceries_a02y.png'),
                    const SizedBox(height: 137.4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TabPageWelcomeScreen(
                          full: const Color(0xFFFF3D00),
                          border: const Color(0xFFFAFAFA),
                          selected: _currentPage == 0,
                        ),
                        TabPageWelcomeScreen(
                          full: const Color(0xFFFF3D00),
                          border: const Color(0xFFFAFAFA),
                          selected: _currentPage == 1,
                        ),
                        TabPageWelcomeScreen(
                          full: const Color(0xFFFF3D00),
                          border: const Color(0xFFFAFAFA),
                          selected: _currentPage == 2,
                        ),
                      ],
                    ),
                    const SizedBox(height: 43),
                    const Text(
                      'Goals',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF08063A),
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      'Easy Of Ordering',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 125),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        start: 10.3,
                        end: 0.8,
                      ),
                      child:
                          Image.asset('images/undraw_On_the_way_re_swjt.png'),
                    ),
                    const SizedBox(height: 178.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TabPageWelcomeScreen(
                          selected: _currentPage == 1,
                          full: const Color(0xFFFF3D00),
                          border: const Color(0xFFFAFAFA),
                        ),
                        TabPageWelcomeScreen(
                          selected: _currentPage == 1,
                          full: const Color(0xFFFF3D00),
                          border: const Color(0xFFFAFAFA),
                        ),
                        TabPageWelcomeScreen(
                          selected: _currentPage == 2,
                          full: const Color(0xFFFF3D00),
                          border: const Color(0xFFFAFAFA),
                        ),
                      ],
                    ),
                    const SizedBox(height: 43),
                    const Text(
                      'Goals',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF08063A),
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      'Access of speed',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 97),
                    Image.asset('images/undraw_My_location_re_r52x.png'),
                    const SizedBox(height: 140),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TabPageWelcomeScreen(
                          full: const Color(0xFFFF3D00),
                          border: const Color(0xFFFAFAFA),
                          selected: _currentPage == 2,
                        ),
                        TabPageWelcomeScreen(
                          full: const Color(0xFFFF3D00),
                          border: const Color(0xFFFAFAFA),
                          selected: _currentPage == 2,
                        ),
                        TabPageWelcomeScreen(
                          full: const Color(0xFFFF3D00),
                          border: const Color(0xFFFAFAFA),
                          selected: _currentPage == 2,
                        ),
                      ],
                    ),
                    const SizedBox(height: 43),
                    const Text(
                      'Goals',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF08063A),
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      'Accuracy in reaching poeple',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Visibility(
            visible: _currentPage == 2,
            child: InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/LunchWelcomeScreen');
              },
              child: Container(
                alignment: AlignmentDirectional.center,
                height: 49,
                width: 192,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0XFFFF6A0D),
                      Color(0XFFFF3D00),
                    ],
                  ),
                ),
                child: const Text(
                  'get start',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 79),
        ],
      ),
    );
  }
}
