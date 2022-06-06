import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

enum ViewEnum { Dashboard, Services, Gallery, Insight, Settings, About }

extension ViewMapper on ViewEnum {
  static const icons = {
    ViewEnum.Dashboard: Iconsax.element_35,
    ViewEnum.Services: Iconsax.layer5,
    ViewEnum.Gallery: Iconsax.gallery5,
    ViewEnum.Insight: Iconsax.hierarchy_25,
    ViewEnum.Settings: Iconsax.candle5,
    ViewEnum.About: Iconsax.heart5
  };
  static const names = {
    ViewEnum.Dashboard: "Dashboard",
    ViewEnum.Services: "Services",
    ViewEnum.Gallery: "Gallery",
    ViewEnum.Insight: "Insight",
    ViewEnum.Settings: "Settings",
    ViewEnum.About: "About"
  };

  IconData get icon => icons[this] ?? Iconsax.box1;
  String get name => names[this] ?? 'Unknown';
}
