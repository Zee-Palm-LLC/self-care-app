import 'package:climate_app/data/assets.dart';
import 'package:climate_app/data/constants.dart';
import 'package:climate_app/night/components/timeline_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class NightView extends StatelessWidget {
  const NightView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Get.height / 1.5,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(CustomAsset.kNightBg),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Good Night",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "21 December, 2022",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Programmation",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        height: 40,
                        width: 60,
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 10),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            color: CustomColors.kPrimary),
                        child: const Icon(Icons.add, color: Colors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
          Container(
            height: Get.height / 3,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: CustomColors.kPrimary,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: CustomColors.kPrimary,
                    blurRadius: 10,
                    spreadRadius: 10,
                    offset: Offset(0, 3),
                  ),
                  BoxShadow(
                    color: CustomColors.kPrimary,
                    blurRadius: 3,
                    spreadRadius: 3,
                    offset: Offset(3, 0),
                  ),
                ]),
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TimeLineTile(
                  color: Colors.teal,
                  title: "Meditation Zen",
                  subtitle: "In Progress",
                  trailing: "5 : 00 pm",
                  icon: CustomAsset.kYoga,
                ),
                Container(
                  height: 30,
                  width: 1,
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 18),
                ),
                TimeLineTile(
                  color: CustomColors.kSecondary,
                  title: "Bed Time",
                  subtitle: "To Do",
                  trailing: "10 : 00 pm",
                  icon: CustomAsset.kNight,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
