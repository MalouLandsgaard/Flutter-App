import 'package:flutter/material.dart';
import 'package:flutter_app/globals/views.dart';
import 'package:flutter_app/globals/constants.dart' as constants;
import 'package:flutter_app/views/dashboard/button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class MenuPanel extends StatefulWidget {
  final ViewEnum view;
  const MenuPanel(this.view, {Key? key}) : super(key: key);

  @override
  State<MenuPanel> createState() => _MenuPanelState();
}

class _MenuPanelState extends State<MenuPanel> {
  Color appColor = constants.APP_COLOR;
  Color greyColor = constants.GREYTEXT_COLOR;
  double width = 220;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [logo(), pages()],
          ),
          pop()
        ],
      ),
    );
  }

  Widget logo() {
    return Container(
      height: 70,
      alignment: Alignment.centerLeft,
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text("Identity.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              )),
        ),
      ),
    );
  }

  Widget pages() {
    return Wrap(
      runSpacing: 10,
      children: List.generate(
          ViewEnum.values.length,
          (index) =>
              menuButton(ViewEnum.values[index], index == 0 ? true : false)),
    );
  }

  Widget menuButton(ViewEnum view, bool active) {
    return Container(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 3,
                  height: double.infinity,
                  color: active ? appColor : Colors.transparent,
                ),
                SizedBox(width: 25),
                Container(
                  child: Icon(
                    view.icon,
                    color: active ? Colors.white : greyColor,
                    size: 20,
                  ),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(10),
                  //   color: active ? appColor : greyColor,
                  // ),
                ),
                SizedBox(width: 15),
                Text(
                  view.name,
                  style: TextStyle(
                      color: active ? Colors.white : greyColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 15,
                  width: 15,
                  child: view == ViewEnum.Insight
                      ? Text("2",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w500))
                      : null,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: view == ViewEnum.Insight ? Colors.red : null),
                ),
                SizedBox(width: 5),
                Container(
                  height: 10,
                  width: 10,
                  child: view == ViewEnum.Insight
                      ? Icon(Iconsax.arrow_right_25, color: greyColor, size: 12)
                      : null,
                ),
                SizedBox(width: 28)
              ],
            ),
          ],
        ));
  }

  Widget pop() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 200,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: appColor.withOpacity(0.15)),
              height: width - 40,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Upgrade to Pro version\nto access all features",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: 15),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: appColor,
                        ),
                        alignment: Alignment.center,
                        height: 30,
                        width: double.infinity,
                        child: DefaultButton(color: appColor, text: "Upgrade")
                        // Text(
                        //   "Upgrade",
                        //   style: TextStyle(
                        //       color: Colors.white,
                        //       fontSize: 12,
                        //       fontWeight: FontWeight.w500),
                        // ),
                        ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, -1.3),
              child: SvgPicture.asset(
                'assets/platforms/Having fun.svg',
                height: 110,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
