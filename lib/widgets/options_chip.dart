import 'package:balisia/consts.dart';
import 'package:balisia/models/option.dart';
import 'package:flutter/material.dart';

class OptionChip extends StatelessWidget {
  final int currentIndex;
  final BalisiaOption option;
  final VoidCallback onTap;

  bool get isSelected => currentIndex == option.id;

  const OptionChip({
    Key? key,
    required this.option,
    this.currentIndex = 0,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: isSelected ? Balisia.yellow : Balisia.lightBlue,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: Text(
                option.icon,
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(option.text),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
