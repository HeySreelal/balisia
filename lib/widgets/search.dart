import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:balisia/consts.dart';

class BalisiaSearch extends StatelessWidget {
  const BalisiaSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 8,
        ),
        hintText: "Search topics here...",
        hintStyle: const TextStyle(
          color: Balisia.hintGrey,
        ),
        suffixIcon: Container(
          child: const Icon(
            CupertinoIcons.search,
            color: Balisia.white,
          ),
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Balisia.black,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
