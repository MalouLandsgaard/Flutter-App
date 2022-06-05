import 'package:flutter/material.dart';
import 'package:flutter_app/globals/views.dart';
import 'package:flutter_app/globals/constants.dart' as constants;
import 'package:flutter_app/views/dashboard/button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

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
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              topBar(),
              Container(
                height: 2,
                width: double.infinity,
                // color: Color(0xFF1A1C20),
              ),
              overview(),
              SizedBox(height: 20),
              analyse()
            ],
          ),
          Column(
            children: [
              popUp(),
            ],
          ),
        ]),
      ),
    );
  }

  Widget topBar() {
    return Container(
      height: 70,
      alignment: Alignment.centerLeft,
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

  Widget overview() {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [
              Container(
                  height: 150,
                  alignment: Alignment.bottomCenter,
                  color: appColor.withOpacity(0.15),
                  child: SvgPicture.asset('assets/platforms/wave2.svg',
                      width: 550,
                      fit: BoxFit.fitWidth,
                      color: appColor,
                      semanticsLabel: 'A red up arrow')),
              Container(
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Collect, Save, Discover\nand Sell your social data",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                      Row(
                        children: [
                          Container(
                              width: 110,
                              child: DefaultButton(
                                  color: greyBoxColor, text: "Learn more")),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: greyBoxColor),
            width: double.infinity,
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [Text("hello")],
              ),
            ),
          ),
        )
      ],
    );
  }

  // Widget view() {
  //   return Stack(children: [
  //     content(),
  //     popUp(),
  //   ]);
  // }

  Widget analyse() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Row(
        //   children: [Text(EmojiParser().get('vomit').code)],
        // )
        Text("Analyse tools " + EmojiParser().get("fire").code,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
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
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 250,
                      width: 180,
                    )),
          ),
        ),
      ],
    );
  }

  // Widget content2() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
  //         child: Wrap(
  //           spacing: 20,
  //           children: [
  //             Container(
  //               decoration: BoxDecoration(
  //                   border: Border(
  //                       bottom: BorderSide(
  //                 color: appColor,
  //                 width: 3,
  //               ))),
  //               child: Column(
  //                 children: [
  //                   Text("  Overview  ",
  //                       style: TextStyle(
  //                           color: Colors.white,
  //                           fontSize: 12,
  //                           fontWeight: FontWeight.w500)),
  //                   SizedBox(height: 15),
  //                 ],
  //               ),
  //             ),
  //             Column(
  //               children: [
  //                 Text("  Profile  ",
  //                     style: TextStyle(
  //                         color: greyColor,
  //                         fontSize: 12,
  //                         fontWeight: FontWeight.w500)),
  //               ],
  //             ),
  //             Column(
  //               children: [
  //                 Text("  Activity  ",
  //                     style: TextStyle(
  //                         color: greyColor,
  //                         fontSize: 12,
  //                         fontWeight: FontWeight.w500)),
  //               ],
  //             ),
  //           ],
  //         ),
  //       ),
  //       Container(
  //         color: Color(0xFF1A1C20),
  //         height: 2,
  //         width: double.infinity,
  //       ),
  //       Padding(
  //         padding: const EdgeInsets.all(20),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             const Text("Newest Images",
  //                 style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 16,
  //                   fontWeight: FontWeight.w500,
  //                 )),
  //             SizedBox(height: 20),
  //             SingleChildScrollView(
  //               scrollDirection: Axis.horizontal,
  //               child: Wrap(
  //                 spacing: 20,
  //                 children: List.generate(
  //                     10,
  //                     (index) => Container(
  //                           decoration: BoxDecoration(
  //                             color: greyBoxColor,
  //                             borderRadius: BorderRadius.circular(15),
  //                           ),
  //                           height: 250,
  //                           width: 180,
  //                         )),
  //               ),
  //             ),
  //             SizedBox(height: 20),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Container(
  //                   child: const Text("Newest Images",
  //                       style: TextStyle(
  //                         color: Colors.white,
  //                         fontSize: 16,
  //                         fontWeight: FontWeight.w500,
  //                       )),
  //                 ),
  //                 SizedBox(width: 20),
  //                 Container(
  //                   child: const Text("Newest Images",
  //                       style: TextStyle(
  //                         color: Colors.white,
  //                         fontSize: 16,
  //                         fontWeight: FontWeight.w500,
  //                       )),
  //                 ),
  //                 SizedBox(width: 20),
  //                 Container(
  //                   child: const Text("Newest Images",
  //                       style: TextStyle(
  //                         color: Colors.white,
  //                         fontSize: 16,
  //                         fontWeight: FontWeight.w500,
  //                       )),
  //                 ),
  //               ],
  //             ),
  //             SizedBox(height: 20),
  //           ],
  //         ),
  //       )
  //     ],
  //   );
  // }

  Widget popUp() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 65),
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
