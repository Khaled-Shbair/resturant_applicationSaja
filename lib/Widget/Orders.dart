import 'package:flutter/material.dart';

import 'Stars.dart';

class Orders extends StatelessWidget {
  const Orders({
    required this.image,
    required this.mealName,
    required this.details,
    required this.price,
    required this.function,
   // required this.onPressed,
    Key? key,
  }) : super(key: key);
  final String image;
  final String mealName;
  final String details;
  final String price;
  final Function() function;
  //final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 90,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          //onPressed,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0XFF08063A),
          ),
        ),
        actions: [
          Image.asset('images/profile.png'),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: AlignmentDirectional.center,
            height: 250,
            child: Image.asset(image),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0XFF94A0DD).withAlpha(41),
                  offset: const Offset(3, 3),
                  blurRadius: 7,
                ),
              ],
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsetsDirectional.only(start: 37, end: 30),
              children: [
                const Text(
                  'Meal name : ',
                  style: TextStyle(
                    color: Color(0XFFFF3D00),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  mealName,
                  style: const TextStyle(
                    color: Color(0XFF08063A),
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 17),
                const Text(
                  'Evaluation : ',
                  style: TextStyle(
                    color: Color(0XFFFF3D00),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: const [
                    Stars(),
                    Stars(),
                    Stars(),
                    Stars(),
                    Stars(),
                    Stars(),
                  ],
                ),
                const SizedBox(height: 17),
                const Text(
                  'Details : ',
                  style: TextStyle(
                    color: Color(0XFFFF3D00),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 160,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Text(
                        details,
                        style: const TextStyle(
                          color: Color(0XFF08063A),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 17),
                const Text(
                  'Price : ',
                  style: TextStyle(
                    color: Color(0XFFFF3D00),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  price,
                  style: const TextStyle(
                    color: Color(0XFF08063A),
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: function,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                      ),
                      child: Container(
                        alignment: AlignmentDirectional.center,
                        height: 38,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0XFFFF6A0D).withAlpha(64),
                                offset: const Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
                            gradient: const LinearGradient(
                              begin: AlignmentDirectional.topCenter,
                              end: AlignmentDirectional.bottomCenter,
                              colors: [
                                Color(0XFFFF3D00),
                                Color(0XFFFF6A0D),
                              ],
                            )),
                        child: const Text(
                          'order now',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
