import 'package:balisia/consts.dart';
import 'package:balisia/screens/home.dart';
import 'package:balisia/utils/slide.dart';
import 'package:balisia/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  void goHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      slidingRoute(
        const Home(),
      ),
    );
  }

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
      floatingActionButton: RoundedButton(
        onPressed: () => goHome(context),
        child: const Icon(Icons.chevron_right),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
