import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum PlatformEnum {
  Facebook,
  Instagram,
  Twitter,
  Pinterest,
  LinkedIn,
  TikTok,
}

extension PlatformMapper on PlatformEnum {
  static const icons = {
    PlatformEnum.Instagram: 'assets/platforms/InstagramS.svg',
    PlatformEnum.Facebook: 'assets/platforms/FacebookS.svg',
    PlatformEnum.LinkedIn: 'assets/platforms/LinkedInS.svg',
    PlatformEnum.Twitter: 'assets/platforms/TwitterS.svg',
    PlatformEnum.Pinterest: 'assets/platforms/PinterestS.svg',
    PlatformEnum.TikTok: 'assets/platforms/TikTokS.svg',
  };
  static const names = {
    PlatformEnum.Instagram: "Instagram",
    PlatformEnum.Facebook: "Facebook",
    PlatformEnum.LinkedIn: "LinkedIn",
    PlatformEnum.Twitter: "Twitter",
    PlatformEnum.Pinterest: "Pinterest",
    PlatformEnum.TikTok: "TikTok",
  };
  static const colors = {
    PlatformEnum.Instagram: Color(0xFFEA2D89),
    PlatformEnum.Facebook: Color(0xFF297BE5),
    PlatformEnum.LinkedIn: Color(0xFF1776B2),
    PlatformEnum.Twitter: Color(0xFF30B5DE),
    PlatformEnum.Pinterest: Color(0xFFE82646),
    PlatformEnum.TikTok: Color(0xFF161632),
  };

  Widget get icon => SvgPicture.asset(
        icons[this] ?? '',
        color: Colors.white,
        //color: Color(0xFFC9CCD6)
        //color: color,
      );
  String get name => names[this] ?? 'Unknown';

  Color get color => colors[this] ?? Colors.black;
}
