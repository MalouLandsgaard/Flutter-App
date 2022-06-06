import 'package:flutter/material.dart';
import 'package:flutter_app/globals/constants.dart';
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
  static const icons2 = {
    PlatformEnum.Instagram: 'assets/platforms/InstagramS.svg',
    PlatformEnum.Facebook: 'assets/platforms/FacebookS.svg',
    PlatformEnum.LinkedIn: 'assets/platforms/LinkedInS.svg',
    PlatformEnum.Twitter: 'assets/platforms/TwitterS.svg',
    PlatformEnum.Pinterest: 'assets/platforms/PinterestS.svg',
    PlatformEnum.TikTok: 'assets/platforms/TikTokS.svg',
  };

  static const icons = {
    PlatformEnum.Instagram: 'assets/platforms/Instagram.svg',
    PlatformEnum.Facebook: 'assets/platforms/Facebook.svg',
    PlatformEnum.LinkedIn: 'assets/platforms/LinkedIn.svg',
    PlatformEnum.Twitter: 'assets/platforms/Twitter.svg',
    PlatformEnum.Pinterest: 'assets/platforms/Pinterest.svg',
    PlatformEnum.TikTok: 'assets/platforms/TikTok.svg',
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
        //color: APP_COLOR,

        //color: color,
      );
  String get name => names[this] ?? 'Unknown';

  Color get color => colors[this] ?? Colors.black;
}
