import 'package:climate_app/data/assets.dart';
import 'package:climate_app/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'activities_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Get.height / 1.5,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(CustomAsset.kMountains),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 50),
                Text(
                  "Welcome, Megan",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800),
                ),
                Text(
                  "21 December, 2022",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(height: 30),
                ActivitiesCard()
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: Text(
                    'What do you need today ?',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 24),
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 80,
                          width: 280,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              SvgPicture.asset(CustomAsset.kYoga,
                                  color: Colors.white, height: 50),
                              const SizedBox(width: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Meditation Zen',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Recommend in the morning',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (ctx, index) =>
                          const SizedBox(width: 15),
                      itemCount: 2),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
