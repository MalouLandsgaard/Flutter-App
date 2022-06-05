import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/globals/platforms.dart';
import 'package:flutter_app/globals/views.dart';
import 'package:flutter_app/views/dashboard/menupanel.dart';
import 'package:flutter_app/views/dashboard/view.dart';
import 'package:flutter_app/globals/constants.dart' as constants;

class Application extends StatefulWidget {
  const Application({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  Color appColor = constants.APP_COLOR;
  Color greyColor = constants.GREYTEXT_COLOR;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121416),
      //backgroundColor: Color(0xFFF0F3FF),
      body: Row(
        children: [
          MenuPanel(ViewEnum.Dashboard),
          Container(
            color: Color(0xFF1A1C20),
            height: double.infinity,
            width: 2,
          ),
          View(ViewEnum.Dashboard)
        ],
      ),
    );
  }
}
