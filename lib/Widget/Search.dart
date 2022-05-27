import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        top: 20,
      ),
      child: TextField(
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
    );
  }
}
