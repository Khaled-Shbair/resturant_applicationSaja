import 'package:flutter/material.dart';

import '../models/BottomNavigationBar_Item.dart';
import 'Departments/Departments Screen.dart';
import 'Favorite Screen.dart';
import 'Home Screen.dart';
import 'Profile Screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreen();
}

int _currentIndex = 0;
List<BottomNavigationItem> list = <BottomNavigationItem>[
  BottomNavigationItem(widget: const HomeScreen()),
  BottomNavigationItem(widget: const FavoriteScreen()),
  BottomNavigationItem(widget: const DepartmentScreen()),
  BottomNavigationItem(widget: const ProfileScreen()),
  BottomNavigationItem(widget: const ProfileScreen()),
];

class _MainScreen extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0XFFFF3D00),
        unselectedItemColor: const Color(0XFFD0CFCD),
        iconSize: 28,
        showSelectedLabels: false,
        elevation: 10,
        showUnselectedLabels: false,
        onTap: (int index) {
          setState(() => _currentIndex = index);
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}
