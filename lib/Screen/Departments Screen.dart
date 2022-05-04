import 'package:flutter/material.dart';

import '../Widget/Product Department.dart';

class DepartmentScreen extends StatefulWidget {
  const DepartmentScreen({Key? key}) : super(key: key);

  @override
  State<DepartmentScreen> createState() => _DepartmentScreenState();
}

class _DepartmentScreenState extends State<DepartmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0XFF08063A),
          ),
        ),
        title: const Text(
          'Sections',
          style: TextStyle(
            color: Color(0XFFFF3D00),
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Image.asset('images/profile.png'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 15,
          end: 15,
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: const EdgeInsetsDirectional.only(
                  start: 20,
                ),
                fillColor: const Color(0XFFEBEBEB),
                filled: true,
                hintText: 'Search',
                suffixIcon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: const LinearGradient(
                      begin: AlignmentDirectional.topCenter,
                      end: AlignmentDirectional.bottomCenter,
                      colors: [
                        Color(0XFFFF3D00),
                        Color(0XFFFF6A0D),
                      ],
                    ),
                  ),
                  child: IconButton(
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                ),
                hintStyle: const TextStyle(
                  color: Colors.black12,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            Expanded(
              child: GridView(
                padding: const EdgeInsetsDirectional.only(
                  top: 29,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 29,
                  childAspectRatio: 162 / 255,
                ),
                children: [
                  Product(
                    image: 'images/purger1.png',
                    title: 'Chicken Burger',
                    price: '\$15',
                    function: () {},
                  ),
                  Product(
                    image: 'images/pngegg (7).png',
                    title: 'Beef  Burger',
                    price: '\$10',
                    function: () {},
                  ),
                  Product(
                    image: 'images/pizza1.png',
                    title: 'Italian Pizza',
                    price: '\$5',
                    function: () {},
                  ),
                  Product(
                    image: 'images/pizza3.png',
                    title: 'Cheese Pizza',
                    price: '\$20',
                    function: () {},
                  ),
                  Product(
                    image: 'images/pngegg3.png',
                    title: 'Cheese Burger',
                    price: '\$25',
                    function: () {},
                  ),
                  Product(
                    image: 'images/pizza2.png',
                    title: 'Pizza Margherita',
                    price: '\$26',
                    function: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
