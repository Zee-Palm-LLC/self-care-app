import 'package:climate_app/data/assets.dart';
import 'package:climate_app/data/constants.dart';
import 'package:climate_app/home/home_view.dart';
import 'package:climate_app/night/night_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final List<String> icons = [
    CustomAsset.kHome,
    CustomAsset.kNight,
    CustomAsset.kCircle,
    CustomAsset.kMusic
  ];
  final List<Widget> pages = [
    const HomeView(),
    const NightView(),
    Container(),
    Container(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        height: 60,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        color: CustomColors.kSecondary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              icons.length,
              (index) => InkWell(
                    onTap: () {
                      selectedIndex = index;
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          icons[index],
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                        ),
                        const SizedBox(height: 5),
                        selectedIndex == index
                            ? Container(
                                height: 5,
                                width: 5,
                                decoration: const BoxDecoration(
                                    color: Colors.yellow,
                                    shape: BoxShape.circle),
                              )
                            : const SizedBox()
                      ],
                    ),
                  )),
        ),
      ),
    );
  }
}
