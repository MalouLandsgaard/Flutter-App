import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/globals/platforms.dart';
import 'package:flutter_app/views/dashboard/top_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_app/globals/constants.dart' as constants;

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Color appColor = constants.APP_COLOR;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Hey, Jane",
                            style: TextStyle(
                                fontSize: 16,
                                color: appColor,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700)),
                        //searchBar()
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: appColor,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    SizedBox(height: 20),
                    platformWidget()
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Container(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("hello")],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget platformWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Platform",
                style: TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.w600)),
            viewAllButton("Unknown")
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            spacing: 20,
            children: List.generate(
                PlatformEnum.values.length,
                (index) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: PlatformEnum.values[index].color,
                      //color: Colors.white
                    ),
                    width: 90,
                    height: 90,
                    child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 30,
                                width: 30,
                                child: PlatformEnum.values[index].icon),
                            SizedBox(height: 7),
                            Text(PlatformEnum.values[index].name,
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500))
                          ],
                        )))),
          ),
        )
      ],
    );
  }

  Widget searchBar() {
    return Container(
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Row(
          children: [
            Icon(
              Iconsax.search_normal_1,
              size: 12,
              color: Color(0xFF979797),
            ),
            SizedBox(
              width: 5,
            ),
            Text("What do you want to find ... ",
                style: TextStyle(
                  fontSize: 11,
                  color: Color(0xFF979797),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                )),
          ],
        ),
      ),
    );
  }

  Widget viewAllButton(String location) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text("View all",
              style: TextStyle(
                  color: appColor,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600)),
          SizedBox(width: 5),
          Icon(Iconsax.arrow_right_25, color: appColor, size: 14)
        ],
      ),
    ));
  }
}
