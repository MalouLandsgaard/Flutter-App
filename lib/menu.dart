import 'package:flutter/material.dart';
import 'package:flutter_app/views.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  var menuItems = [""];
  Color blue = const Color(0xFF0D85FA);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: blue, borderRadius: BorderRadius.circular(15)),
      width: 250,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              "Identity.",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            menuList()
          ],
        ),
      ),
    );
  }

  Widget menuList() {
    return Column(
      children: List.generate(
          ViewEnum.values.length,
          (index) =>
              menuItem(ViewEnum.values[index], index == 0 ? true : false)),
    );
  }

  Widget menuItem(ViewEnum view, bool active) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
            color: active ? Colors.white : null,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                view.icon,
                color: active ? blue : Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                view.name,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: active ? blue : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
