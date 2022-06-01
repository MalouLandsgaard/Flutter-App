import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0x000d85fa),
      width: 300,
      child: Column(
        children: [SizedBox(height: 300)],
      ),
    );
  }
}
