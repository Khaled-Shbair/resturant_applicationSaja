import 'package:flutter/material.dart';
import 'package:resturant_application/Shared%20Preferences/SharedPreferences.dart';

import '../Widget/MenuButtonSheet.dart';
import '../Widget/ProductProfile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profile',
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
            color: Color(0XFFFF3D00),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showMenus();
            },
            icon: const Icon(
              Icons.menu,
              color: Color(0XFFFF3D00),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.only(start: 42, end: 32),
        children: [
          const SizedBox(height: 32),
          SizedBox(
            height: 124,
            width: 122,
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                CircleAvatar(
                  child: Image.asset(
                    'images/Profile image.png',
                    width: 116,
                    height: 166,
                  ),
                  radius: 60,
                  backgroundColor: Colors.transparent,
                ),
                Container(
                  height: 27,
                  width: 122,
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    gradient: const LinearGradient(
                      begin: AlignmentDirectional.topCenter,
                      end: AlignmentDirectional.bottomCenter,
                      colors: [
                        Color(0XFFFF3D00),
                        Color(0XFFFF6A0D),
                      ],
                    ),
                  ),
                  child: const Text(
                    'Saja F.ALAshram',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 61),
          const ProductProfile(
            image: 'images/chicken burgerBig.png',
            nameMeal: 'Chicken Burger',
          ),
          const ProductProfile(
            image: 'images/beef burger big.png',
            nameMeal: 'Beef Burger',
          ),
          const ProductProfile(
            image: 'images/italian pizza big.png',
            nameMeal: 'Italian Pizza',
          ),
          const ProductProfile(
            image: 'images/cheese pizza big.png',
            nameMeal: 'Cheese Pizza',
          ),
        ],
      ),
    );
  }

  void showMenus() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      elevation: 0,
      context: context,
      builder: (context) {
        return BottomSheet(
          backgroundColor: Colors.white,
          elevation: 4,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          onClosing: () {},
          builder: (context) {
            return ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsetsDirectional.only(
                top: 17.3,
                bottom: 29.2,
              ),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 46,
                      decoration: BoxDecoration(
                        color: const Color(0XFFE3E3E3),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ],
                ),
                MenuButtonSheet(
                  icon: Icons.shopping_cart,
                  title: 'Departments',
                  bottom: 35,
                  top: 35,
                  start: 37,
                  function: () {
                    Navigator.pushReplacementNamed(
                        context, '/DepartmentScreen');
                  },
                ),
                MenuButtonSheet(
                  icon: Icons.favorite,
                  title: 'Favorite',
                  bottom: 35,
                  start: 37,
                  function: () {
                    Navigator.pushReplacementNamed(context, '/FavoriteScreen');
                  },
                ),
                MenuButtonSheet(
                  icon: Icons.help,
                  title: 'help',
                  bottom: 35,
                  start: 37,
                  function: () {
                    Navigator.pushReplacementNamed(context, '/HelpScreen');
                  },
                ),
                MenuButtonSheet(
                  icon: Icons.logout,
                  title: 'Log out',
                  start: 37,
                  function: () {
                    showDialogs();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }

  void showDialogs() async {
    bool? loggedOut = await showDialog<bool>(
      barrierColor: Colors.black.withOpacity(0.56),
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
          backgroundColor: Colors.white,
          alignment: AlignmentDirectional.center,
          contentPadding: const EdgeInsetsDirectional.only(
            start: 82,
            end: 82,
            top: 35,
            bottom: 40,
          ),
          actionsOverflowButtonSpacing: 15,
          content: const Text(
            'Do you want to\n    Log out of\n2eat resturant?',
            style: TextStyle(
              color: Color(0xff08063A),
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            Column(
              children: [
                TextButton(
                  onPressed: () async {
                    Navigator.pop(context, true);
                  },
                  child: const Text(
                    'Log out',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFFFF3D00),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF08063A),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
    if (loggedOut ?? false) {
      await logout();
    }
  }

  Future<void> logout() async {
    bool cleared = await SharedPreferencesController().cleared();
    if (cleared) {
      Navigator.pushReplacementNamed(context, '/LoginScreen');
    }
  }
}
