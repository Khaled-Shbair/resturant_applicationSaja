import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/OrderMethod.dart';

class OrderChickenBurgerScreen extends StatefulWidget {
  const OrderChickenBurgerScreen({Key? key}) : super(key: key);

  @override
  State<OrderChickenBurgerScreen> createState() =>
      _OrderChickenBurgerScreenState();
}

class _OrderChickenBurgerScreenState extends State<OrderChickenBurgerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          'Order',
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
      body: ListView(
        padding: const EdgeInsetsDirectional.only(
          start: 37,
          end: 37,
          top: 50,
        ),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color(0XFFFF6A0D),
                radius: 52,
                child: Image.asset(
                  'images/purger1.png',
                  height: 48,
                  width: 76,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Chicken Burger',
                    style: TextStyle(
                        color: Color(0XFF08063A),
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 6),
                  Divider(
                    thickness: 1,
                    color: Color(0XFF08063A),
                  ),
                  Text(
                    'with ketchup and Potato',
                    style: TextStyle(
                        color: Color(0XFF08063A),
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 28),
          Column(
            children: [
              Container(
                padding: const EdgeInsetsDirectional.only(
                    start: 20, end: 20, top: 18),
                height: 412,
                width: 354,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0XFF94A0DD).withAlpha(26),
                      offset: const Offset(-3, -3),
                      blurRadius: 6,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(19),
                ),
                child: Column(
                  children: const [
                    Text(
                      'order method',
                      style: TextStyle(
                          color: Color(0XFFFF3D00),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 25),
                    OrderMethod(title: 'Amount of Meal'),
                    SizedBox(height: 25),
                    OrderMethod(title: 'Mobile Number '),
                    SizedBox(height: 25),
                    OrderMethod(title: 'Location'),
                    SizedBox(height: 25),
                    OrderMethod(title: 'Card Holder Name'),
                    SizedBox(height: 25),
                    OrderMethod(title: 'Card Number'),
                    SizedBox(height: 25),
                    OrderMethod(title: 'Expiry Date'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
