import 'package:flutter/material.dart';

import '../Widget/ProductHomeScreen.dart';
import '../Widget/TabPageWelcomeScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0XFFFF3D00),
        unselectedItemColor: const Color(0XFFD0CFCD),
        iconSize: 28,
        showSelectedLabels: false,
        elevation: 10,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
        ],
      ),
      body: PageView(
        onPageChanged: (int value) {
          setState(() {
            _page = value;
          });
        },
        children: [
          Column(
            children: [
              Image.asset('images/home1.png'),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Recent',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF08063A),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'view all',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF08063A),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProductHomeScreen(
                      selected: true,
                      image: 'images/pngegg2.png',
                      title: 'Chicken Burger',
                      price: '\$15',
                    ),
                    SizedBox(width: 20),
                    ProductHomeScreen(
                      selected: true,
                      image: 'images/pngegg (7).png',
                      title: 'Beef  Burger',
                      price: '\$10',
                    ),
                    SizedBox(width: 20),
                    ProductHomeScreen(
                      selected: true,
                      image: 'images/pizza1.png',
                      title: 'Italian Pizza',
                      price: '\$5',
                    ),
                    SizedBox(width: 20),
                    ProductHomeScreen(
                      selected: true,
                      image: 'images/pizza3.png',
                      title: 'Cheese Pizza',
                      price: '\$20',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TabPageWelcomeScreen(
                    full: Color(0xFF08063A),
                    border: Color(0xFF0C0A54),
                    selected: false,
                  ),
                  TabPageWelcomeScreen(
                    full: const Color(0xFF08063A),
                    border: const Color(0xFF0C0A54),
                    selected: _page == 2,
                  ),
                  TabPageWelcomeScreen(
                    full: const Color(0xFF08063A),
                    border: const Color(0xFF0C0A54),
                    selected: _page == 2,
                  ),
                  TabPageWelcomeScreen(
                    full: const Color(0xFF08063A),
                    border: const Color(0xFF0C0A54),
                    selected: _page == 2,
                  ),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }
}
