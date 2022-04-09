import 'package:balisia/consts.dart';
import 'package:balisia/screens/home.dart';
import 'package:balisia/utils/slide.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.6,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Balisia.lightBlue,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/weekend.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Enjoy your\nVacation with\nBalisia',
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 80,
        width: 80,
        child: TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              slidingRoute(
                const Home(),
              ),
            );
          },
          child: const Icon(
            Icons.chevron_right,
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.resolveWith(
              (states) => const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) => Balisia.black,
            ),
            foregroundColor: MaterialStateProperty.resolveWith(
              (states) => Balisia.white,
            ),
            overlayColor: MaterialStateProperty.resolveWith(
              (states) => Balisia.white.withAlpha(40),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
