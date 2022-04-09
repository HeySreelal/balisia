import 'package:balisia/models/destination.dart';
import 'package:balisia/models/option.dart';
import 'package:flutter/material.dart';

class Balisia {
  static const Color black = Color(0xFF191A1E);
  static const Color white = Colors.white;
  static const Color greyish = Color(0xFFF5F5F5);
  static const Color lightBlue = Color(0xFFD0F6FF);
  static const Color yellow = Color(0xFFFFDF72);
  static const Color hintGrey = Color(0xFFD7D7D7);

  static List<BalisiaOption> options = [
    BalisiaOption(icon: "🌎", text: "Places", id: 1),
    BalisiaOption(icon: "🛫", text: "Flights", id: 2),
    BalisiaOption(icon: "🏖", text: "Beach", id: 3),
    BalisiaOption(icon: "🏨", text: "Hotels", id: 4),
  ];

  static List<Destination> destinations = [
    Destination(
      name: "Bali",
      photo: "bali.jpg",
      subTitle: "Nusa Penida",
      description: "Best for Insta-worthy island adventures.",
    ),
    Destination(
      name: "Namib Desert",
      photo: "namib.jpg",
      subTitle: "Namib Arab Desert",
      description: "Best for adventure in the Namib Desert.",
    ),
  ];
}
