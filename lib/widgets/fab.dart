import 'package:balisia/consts.dart';
import 'package:balisia/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class BalisiaFAB extends StatelessWidget {
  const BalisiaFAB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 2,
      ),
      height: 65,
      decoration: BoxDecoration(
        color: Balisia.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          RoundedButton(
            width: 60,
            height: 60,
            onPressed: () {},
            child: const Icon(
              Icons.work_outlined,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: RoundedButton(
              width: 60,
              height: 60,
              onPressed: () {},
              child: const ImageIcon(
                AssetImage("assets/location.png"),
                color: Balisia.greyish,
              ),
              transparentBg: true,
            ),
            decoration: BoxDecoration(
              color: Balisia.white.withAlpha(20),
              shape: BoxShape.circle,
            ),
          ),
          RoundedButton(
            width: 60,
            height: 60,
            onPressed: () {},
            child: const Icon(
              Icons.notifications,
            ),
          ),
        ],
      ),
    );
  }
}
