import 'package:flutter/material.dart';

import 'ImageProfile.dart';
import 'OrderMethod.dart';

class OrderMeals extends StatelessWidget {
  const OrderMeals({
    required this.image,
    required this.mealName,
    required this.withs,
    this.height = 48,
    this.width = 76,
    Key? key,
  }) : super(key: key);
  final String image;
  final String mealName;
  final String withs;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leadingWidth: 90,
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
        actions: const [
          ImageProfile(),
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
                  image,
                  height: height,
                  width: width,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mealName,
                    style: const TextStyle(
                      color: Color(0XFF08063A),
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Divider(
                    thickness: 1,
                    color: Color(0XFF08063A),
                  ),
                  Text(
                    withs,
                    style: const TextStyle(
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
                  start: 20,
                  end: 20,
                  top: 18,
                ),
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
                    OrderMethod(
                      title: 'Amount of Meal',
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 25),
                    OrderMethod(
                      title: 'Mobile Number ',
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(height: 25),
                    OrderMethod(
                      title: 'Location',
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(height: 25),
                    OrderMethod(
                      title: 'Card Holder Name',
                      keyboardType: TextInputType.name,
                    ),
                    SizedBox(height: 25),
                    OrderMethod(
                      title: 'Card Number',
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 25),
                    OrderMethod(
                      title: 'Expiry Date',
                      keyboardType: TextInputType.datetime,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
                child: Container(
                  alignment: AlignmentDirectional.center,
                  height: 47,
                  width: 205,
                  child: const Text(
                    'Order now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0XFFFF6A0D).withAlpha(64),
                        ),
                      ],
                      gradient: const LinearGradient(
                        begin: AlignmentDirectional.centerStart,
                        end: AlignmentDirectional.centerEnd,
                        colors: [
                          Color(0XFFFF3D00),
                          Color(0XFFFF6A0D),
                        ],
                      )),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.transparent,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
