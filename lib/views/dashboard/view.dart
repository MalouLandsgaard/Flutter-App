import 'package:flutter/material.dart';
import 'package:flutter_app/globals/views.dart';
import 'package:flutter_app/globals/constants.dart' as constants;
import 'package:flutter_app/views/dashboard/button.dart';
import 'package:iconsax/iconsax.dart';

class View extends StatefulWidget {
  final ViewEnum view;
  const View(this.view, {Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  Color appColor = constants.APP_COLOR;
  Color topGreyColor = Color(0xFF83878A);
  Color greyColor = constants.GREYTEXT_COLOR;
  Color greyBoxColor = constants.GREY_COLOR;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(children: [
        Column(
          children: [topBar(), content()],
        ),
        Column(
          children: [
            popUp(),
          ],
        ),
      ]),
    );
  }

  Widget topBar() {
    return Container(
      height: 75,
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Dashboard",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(width: 20),
            Row(
              children: [
                searchBar(),
                SizedBox(width: 20),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: greyBoxColor),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: 30,
                    height: 30),
                SizedBox(width: 20),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: topGreyColor,
                    ),
                    width: 30,
                    height: 30)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget searchBar() {
    return Container(
      decoration: BoxDecoration(
        color: greyBoxColor,
        borderRadius: BorderRadius.circular(5),
      ),
      width: 300,
      height: 30,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Row(
          children: [
            Icon(Iconsax.search_normal_1, color: topGreyColor, size: 15),
            SizedBox(width: 10),
            Text("Search name, content, date...",
                style: TextStyle(
                    color: topGreyColor,
                    fontSize: 11,
                    fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget view() {
    return Stack(children: [
      content(),
      popUp(),
    ]);
  }

  Widget content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Wrap(
            spacing: 20,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: appColor,
                  width: 3,
                ))),
                child: Column(
                  children: [
                    Text("  Overview  ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: 15),
                  ],
                ),
              ),
              Column(
                children: [
                  Text("  Profile  ",
                      style: TextStyle(
                          color: greyColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                ],
              ),
              Column(
                children: [
                  Text("  Activity  ",
                      style: TextStyle(
                          color: greyColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: Color(0xFF1A1C20),
          height: 2,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Newest Images",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 20,
                  children: List.generate(
                      10,
                      (index) => Container(
                            decoration: BoxDecoration(
                              color: greyBoxColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            height: 250,
                            width: 180,
                          )),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget popUp() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 65),
      child: Container(
        alignment: Alignment.topRight,
        width: double.infinity,
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 12,
                  spreadRadius: 2,
                  color: Color.fromARGB(255, 16, 19, 20))
            ],
            color: greyBoxColor, //Color(0xFF1E2429),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                info(),
                SizedBox(height: 15),
                stats(),
                SizedBox(height: 15),
                tabs(),
                SizedBox(height: 15),
                DefaultButton(
                  color: Colors.red,
                  text: "Log Out",
                  icon: Iconsax.logout,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget info() {
    return Container(
      height: 40,
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: topGreyColor,
              ),
              width: 40,
              height: 40),
          SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("MalouLandsgaard",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500)),
              Container(
                width: 115,
                child: Text("2478gQ35gfgw221ddfsf83737fFEDnd73ND",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: topGreyColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w500)),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget stats() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text("3",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            Text("Services",
                style: TextStyle(
                    color: topGreyColor,
                    fontSize: 10,
                    fontWeight: FontWeight.w500))
          ],
        ),
        SizedBox(width: 15),
        Column(
          children: [
            Text("7",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            Text("Uploads",
                style: TextStyle(
                    color: topGreyColor,
                    fontSize: 10,
                    fontWeight: FontWeight.w500))
          ],
        )
      ],
    );
  }

  Widget tabs() {
    return Column(
      children: [
        Container(
            height: 20,
            child: Row(
              children: [
                Container(
                  height: 15,
                  width: 15,
                  color: topGreyColor,
                ),
                SizedBox(width: 15),
                Text(
                  "Profile",
                  style: TextStyle(
                      color: topGreyColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                )
              ],
            )),
        SizedBox(height: 5),
        Container(
            height: 20,
            child: Row(
              children: [
                Container(
                  height: 15,
                  width: 15,
                  color: topGreyColor,
                ),
                SizedBox(width: 15),
                Text(
                  "Help Center",
                  style: TextStyle(
                      color: topGreyColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                )
              ],
            )),
      ],
    );
  }
}
