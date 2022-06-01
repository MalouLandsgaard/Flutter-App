import 'package:dotted_border/dotted_border.dart';
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
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                view(),
                const SizedBox(width: 20),
                leftPanel(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget view() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hey, Jane",
                    style: TextStyle(
                        color: appColor,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600)),
                //searchBar()
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment(-1, 1),
                      end: Alignment(1, -1),
                      colors: [
                        Colors.white,
                        appColor,
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Earn \$ by selling your anonymized data",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600)),
                        Container(
                          width: 300,
                          child: Text(
                              "The earnings will vary in size based on the amount, quality and diversity of the data",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          platformWidget(),
          SizedBox(height: 20),
          popularWidget(),
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
                (index) => Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                //color: PlatformEnum.values[index].color,
                                color: Colors.white),
                            width: 80,
                            height: 80,
                            child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: PlatformEnum.values[index].icon)),
                        // SizedBox(height: 5),
                        // Text(PlatformEnum.values[index].name,
                        //     style: TextStyle(
                        //         fontSize: 10,
                        //         fontFamily: 'Poppins',
                        //         color: PlatformEnum.values[index].color,
                        //         fontWeight: FontWeight.w600))
                      ],
                    )),
          ),
        )
      ],
    );
  }

  Widget popularWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Popular Stats",
                style: TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.w600)),
            viewAllButton("Unknown"),
          ],
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
        ),
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

  Widget leftPanel() {
    return SizedBox(
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: appColor,
                          borderRadius: BorderRadius.circular(5)),
                      width: 30,
                      height: 30,
                      child: Icon(
                        Iconsax.woman5,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                          color: appColor,
                          borderRadius: BorderRadius.circular(5)),
                      width: 30,
                      height: 30,
                      child: Icon(
                        Iconsax.man5,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: appColor, borderRadius: BorderRadius.circular(5)),
                  width: 30,
                  height: 30,
                  child: Icon(
                    Iconsax.paintbucket5,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                              color: appColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Balance",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400)),
                                Text("\$ 0",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    constraints: BoxConstraints(minHeight: 300),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container()),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container()),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
