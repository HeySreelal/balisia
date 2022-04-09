import 'package:balisia/consts.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double height;
  final double width;
  final Widget child;
  final bool transparentBg;

  const RoundedButton({
    Key? key,
    required this.onPressed,
    this.height = 80,
    this.width = 80,
    required this.child,
    this.transparentBg = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        child: child,
        style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith(
            (states) => const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => transparentBg ? Colors.transparent : Balisia.black,
          ),
          foregroundColor: MaterialStateProperty.resolveWith(
            (states) => Balisia.white,
          ),
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => Balisia.white.withAlpha(40),
          ),
        ),
      ),
    );
  }
}
