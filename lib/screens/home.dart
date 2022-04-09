import 'package:balisia/consts.dart';
import 'package:balisia/widgets/destination_card.dart';
import 'package:balisia/widgets/fab.dart';
import 'package:balisia/widgets/options_chip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIx = 1;

  void updateIx(int ix) {
    setState(() {
      _currentIx = ix;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Where would you\nlike to go?",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/avatar.png"),
                      radius: 30,
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: Balisia.options
                      .map(
                        (e) => OptionChip(
                          option: e,
                          currentIndex: _currentIx,
                          onTap: () => updateIx(e.id),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
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
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Explore Popular Places",
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: Balisia.destinations
                        .map(
                          (e) => DestinationCard(
                            destination: e,
                          ),
                        )
                        .toList(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: const BalisiaFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
